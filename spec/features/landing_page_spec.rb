require 'rails_helper'

RSpec.describe 'Landing Page', type: :feature do
  describe 'user visits landing page' do

    it 'displays signature on top and bottom of the page' do
      visit root_path
      expect(page).to have_css("img[src*='pics/sig2.png']")
      expect(page).to have_css("img[src*='pics/sig1.png']")
    end

    it 'displays all paintings on the landing page' do
      painting1 = Painting.create(title: 'Painting 1', price: 100, image: 'pics/matt_1.jpg')
      painting2 = Painting.create(title: 'Painting 2', price: 150, image: 'pics/matt_2.jpg')
      painting3 = Painting.create(title: 'Painting 3', price: 286795, image: 'pics/matt_3.jpg')
      painting4 = Painting.create(title: 'Painting 4', price: 286795, image: 'pics/matt_4.jpg')

      visit root_path
      
      expect(page).to have_content(painting1.title)
      expect(page).to have_content(painting2.price)
      expect(page).to have_content(painting3.price)
      expect(page).to have_content(painting4.title)
      expect(page).to have_css("img[src*='pics/matt_3.jpg']")
    end
    
  end
end