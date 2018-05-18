class Portfolio < ApplicationRecord

  validates_presence_of :title, :body, :thumb_image, :main_image

  def self.angular
    where(subtitle: "angular")
  end

  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: "Ruby on Rails") }

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= "https://placeholdit.co//i/600x400"
    self.thumb_image ||= "https://placeholdit.co//i/350x200"
  end
end
