class Painting < ApplicationRecord
  validates :title, :price, :image, presence: true
end