class Item < ApplicationRecord
  validates :title, :description, :price, presence: true
  validates :title, uniqueness: true
  validates :price, numericality: {greater_than: 0}
end
