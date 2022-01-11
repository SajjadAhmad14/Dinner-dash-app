class Item < ApplicationRecord
  belongs_to :Category
  has_many: orders
  validates :title, :description, :price, presence: true
  validates :title, uniqueness: true
  validates :price, numericality: {greater_than: 0}
end
