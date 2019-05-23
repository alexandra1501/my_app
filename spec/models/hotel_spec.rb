require 'rails_helper'

RSpec.describe Hotel, type: :model do

  before(:each) do
    @hotel = Hotel.create!(title: 'aaa', breakfast: 'yes', room: 'its nicee', image: 'aaa', price: '256$', street: name: 'Grodzka')
  end

  describe 'creation' do
    it 'should create the hotel' do
      expect(Hotel.all.count).to eq(1)
    end
  end

end
