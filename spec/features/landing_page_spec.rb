require 'rails_helper'

RSpec.describe 'Landing Page', type: :feature do
  describe 'user visits landing page' do

    it 'sees a welcome message' do
      visit root_path
      expect(page).to have_content('Welcome message or signature here')
    end

    it 'displays all paintings on the landing page' do
      painting1 = Painting.create(title: 'Painting 1', price: 100, image: 'image1.jpg', description: 'Description 1')
      painting2 = Painting.create(title: 'Painting 2', price: 150, image: 'image2.jpg', description: 'Description 2')
      painting3 = Painting.create(title: 'Painting 3', price: 286795, image: 'image3.jpg', description: 'Description 3')

      visit root_path
      expect(page).to have_content(painting1.attributes.values)
    end
  end
end