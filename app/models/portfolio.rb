# app/models/portfolio.rb
class Portfolio < ApplicationRecord
  include Placeholder

  # Associations
  has_many :technologies, dependent: :destroy
  accepts_nested_attributes_for :technologies,
                                reject_if: lambda { |attrs| attrs['name'].blank? }

  # Validations
  validates :title, :body, :main_image, :thumb_image, presence: true

  # Scopes / class methods
  scope :angular, -> { where(subtitle: 'Angular') }
  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }

  # Callbacks
  after_initialize :set_defaults

  private

  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
    self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')
  end
end
