class Product < ApplicationRecord
  validates :name, presence: true
  validates :image_url, presence: true
  validates :price, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }
  validates :image_url, format: { with: %r{\Ahttps?://.*\z} }
end
