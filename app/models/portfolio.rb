class Portfolio < ApplicationRecord
  has_many :technologies
  accepts_nested_attributes_for :technologies,
                                reject_if: ->(attrs) { attrs['name'].blank? }

  include Placeholder

  # keep presence on title/body; images are filled by defaults on create
  validates_presence_of :title, :body

  # If you want to **require** that final records always have image URLs,
  # keep these (defaults below will ensure they pass on create):
  validates_presence_of :main_image, :thumb_image

  def self.angular
    where(subtitle: 'Angular')
  end

  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }

  # Ensure placeholders are set BEFORE validation (so they persist)
  before_validation :set_defaults, on: :create

  private

  def set_defaults
    self.main_image  ||= Placeholder.image_generator(height: '600', width: '400')
    self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')
  end
  
end
