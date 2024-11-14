require 'rails_helper'

RSpec.describe 'Landing Page', type: :feature do
  describe 'user visits landing page' do

    it 'sees a welcome message' do
      visit root_path
      expect(page).to have_content('Welcome message or signature here')
    end

    it 'displays all paintings on the landing page' do
      painting1 = Painting.create(title: 'Painting 1', price: 100, image: 'pics/matt_1.jpg', description: 'Description 1')
      painting2 = Painting.create(title: 'Painting 2', price: 150, image: 'pics/matt_2.jpg', description: 'Description 2')
      painting3 = Painting.create(title: 'Painting 3', price: 286795, image: 'pics/matt_3.jpg', description: 'Description 3')
      painting4 = Painting.create(title: 'Painting 4', price: 286795, image: 'pics/matt_4.jpg', description: 'Description 3')

      visit root_path
      
      expect(page).to have_content(painting1.title)
      expect(page).to have_content(painting2.price)
      expect(page).to have_content(painting3.price)
      expect(page).to have_content(painting4.description)
      expect(page).to have_css("img[src*='pics/matt_3.jpg']")

    end
  end
end