# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Painting.destroy_all

Painting.create(title: 'Mollow', price: 0, image: 'pics/mollow.jpg')
Painting.create(title: 'Sunset', price: 0, image: 'pics/sunset.jpg')
Painting.create(title: 'Secret Canyon', price: 0, image: 'pics/secret_canyon.jpg')
# Painting.create(title: 'Painting 4', price: 286795, image: 'pics/matt_4.jpg', description: 'Description 3')