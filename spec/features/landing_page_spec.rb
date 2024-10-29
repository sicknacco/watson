require 'rails_helper'

RSpec.describe 'Landing Page', type: :feature do
  describe 'user visits landing page' do
    it 'sees a welcome message' do
      visit root_path
      expect(page).to have_content('Welcome message or signature here')
    end
  end
end