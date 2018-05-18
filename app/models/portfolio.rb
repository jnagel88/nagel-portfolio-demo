class Portfolio < ApplicationRecord
  include Placeholder
  validates_presence_of :title, :body, :thumb_image, :main_image

  def self.angular
    where(subtitle: "angular")
  end

  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: "Ruby on Rails") }

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Placeholder.image_generator( '600','400')
    self.thumb_image ||= Placeholder.image_generator( '350','200')
  end
end
