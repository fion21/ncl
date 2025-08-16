# db/seeds.rb
require "open-uri"
require "tempfile"
require "cgi"

puts "Resetting…"
Technology.destroy_all
Portfolio.destroy_all
Blog.destroy_all
Skill.destroy_all
Topic.destroy_all

# Helpers
def download_to_temp(url, basename:)
  io  = URI.open(url, "User-Agent" => "Mozilla/5.0")
  ext = File.extname(URI.parse(url).path)
  ext = ".jpg" if ext.empty?
  tmp = Tempfile.new([basename, ext], binmode: true)
  IO.copy_stream(io, tmp)
  tmp.rewind
  tmp
end

def uploaded_file(tempfile, name:, type: "image/jpeg")
  ActionDispatch::Http::UploadedFile.new(
    tempfile: tempfile,
    filename: name,
    type: type
  )
end

def ph_main(text)  = "https://placehold.co/600x400.jpg?text=#{CGI.escape(text)}"
def ph_thumb(text) = "https://placehold.co/350x200.jpg?text=#{CGI.escape(text)}"

# Topics
3.times { |i| Topic.create!(title: "Topic #{i + 1}") }
puts "Topics: #{Topic.count}"

# Blogs (attach to last topic)
10.times do |i|
  Blog.create!(
    title: "My Blog Post #{i + 1}",
    body:  "Sed ut perspiciatis unde omnis iste natus error sit voluptatem…",
    topic: Topic.last
  )
end
puts "Blogs: #{Blog.count}"

# Skills
5.times { |i| Skill.create!(title: "Rails #{i + 1}", percent_utilized: 15) }
puts "Skills: #{Skill.count}"

# Portfolios (+ technologies + images)
items = [
  { title: "Portfolio title: 1",  subtitle: "Ruby on Rails" },
  { title: "Portfolio title: 2",  subtitle: "Ruby on Rails" },
  { title: "Portfolio title: 3",  subtitle: "Ruby on Rails" },
  { title: "Portfolio title: 4",  subtitle: "Ruby on Rails" },
  { title: "Portfolio title: 5",  subtitle: "Ruby on Rails" },
  { title: "Portfolio title: 6",  subtitle: "Ruby on Rails" },
  { title: "Portfolio title: 7",  subtitle: "Ruby on Rails" },
  { title: "Portfolio title: 8",  subtitle: "Ruby on Rails" },
  { title: "Portfolio title: 9",  subtitle: "Angular" },
  { title: "Portfolio title: 10", subtitle: "Angular" }
]

items.each_with_index do |it, idx|
  p = Portfolio.new(
    title:    it[:title],
    subtitle: it[:subtitle],
    body:     "Lorem ipsum dolor sit amet, consectetur adipiscing elit…"
  )

  main_tmp  = download_to_temp(ph_main(it[:title]),  basename: "main_#{idx}")
  thumb_tmp = download_to_temp(ph_thumb(it[:title]), basename: "thumb_#{idx}")

  p.main_image  = uploaded_file(main_tmp,  name: "main_#{idx}.jpg")
  p.thumb_image = uploaded_file(thumb_tmp, name: "thumb_#{idx}.jpg")

  p.save!

  # cleanup temp files
  main_tmp.close!; thumb_tmp.close!

  %w[React Rails TypeScript Stripe Angular RxJS Postgres Tailwind D3]
    .sample(2).each { |t| p.technologies.create!(name: t) }
end

puts "Portfolios: #{Portfolio.count}, Technologies: #{Technology.count}"
puts "Done."
