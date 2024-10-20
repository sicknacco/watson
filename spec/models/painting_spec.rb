require 'rails_helper'

RSpec.describe Painting, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:price) }
    it { should validate_presence_of(:image) }
    it { should validate_presence_of(:description) }
  end
end