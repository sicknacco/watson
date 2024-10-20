class Painting < ApplicationRecord
  validates :title, :price, :image, :description, presence: true
end