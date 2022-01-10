class Item < ApplicationRecord
  belongs_to :Category
  validates :title, :description, :price, presence: true
  validates :title, uniqueness: true
  validates :price, numericality: {greater_than: 0}
end
