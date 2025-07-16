# ---- Topics ---------------------------------------------------------------
topic = Topic.create!(title: "Programming")
puts "1 topic created"

# ---- Blogs ----------------------------------------------------------------
10.times do |i|
  Blog.create!(
    title:  "My Blog Post #{i}",
    body:   "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium...",
    status: :draft,
    topic_id: topic.id          # numeric FK (no topic: topic)
  )
end
puts "10 blog posts created"

# ---- Skills ---------------------------------------------------------------
5.times do |i|
  Skill.create!(
    title:            "Rails #{i}",
    percent_utilized: 15
  )
end
puts "5 skills created"

# ---- Portfolios -----------------------------------------------------------
9.times do |i|
  Portfolio.create!(
    title:       "Portfolio title #{i}",
    subtitle:    "My great service",
    body:        "Lorem ipsum dolor sit amet, consectetur adipiscing elit…",
    main_image:  "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200"
  )
end
puts "9 portfolio items created"

# ---- Technologies (attach to last portfolio) ------------------------------
3.times do |i|
  Portfolio.last.technologies.create!(
    name: "Technology #{i}"
  )
end
puts "3 technologies created"
