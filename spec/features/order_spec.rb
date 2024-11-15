require 'rails_helper'

RSpec.describe 'Order', type: :feature do
  before(:each) do
    @painting1 = Painting.create(title: 'Painting 1', price: 100, image: 'pics/matt_1.jpg', description: 'Description 1')
    @painting2 = Painting.create(title: 'Painting 2', price: 150, image: 'pics/matt_2.jpg', description: 'Description 2')
    @painting3 = Painting.create(title: 'Painting 3', price: 286795, image: 'pics/matt_3.jpg', description: 'Description 3')
    @painting4 = Painting.create(title: 'Painting 4', price: 286795, image: 'pics/matt_4.jpg', description: 'Description 3')
  end

  describe 'user places an order' do
    it 'creates a new order' do
      visit root_path
      click_button "Order #{@painting1.title}"

      expect current_path.to eq(new_order_path)
      expect(page).to have_content(@painting1.title)
      expect(page).to_not have_content(@painting2.title)
      expect(page).to have_content(@painting1.price)
      expect(page).to have_content(@painting1.description)
      expect(page).to have_css("img[src*='pics/matt_1.jpg']")
      
      expect(page).to have_field('name')
      expect(page).to have_field('email')
      expect(page).to have_field('phone')
      expect(page).to have_field('quantity')
      expect(page).to have_content('How should I contact you?')
      expect(page).to have_dropdown('contact_method')
      
      click_on 'contact_method'
      click on 'Email'

      expect(page).to have_button('Create Order')
      click_on 'Create Order'

      expect(page).to have_content('Order was successfully created!')
      expect(page).to have_content('I will contact you soon to discuss payment and delivery options')
    end
  end
end