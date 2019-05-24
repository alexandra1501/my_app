require 'rails_helper'

RSpec.describe Hotel, type: :model do

    it 'title has to be present' do
      hotel = Hotel.create(title: '', breakfast: 'yes', room: 'its nicee', image: 'aaa', price: '256')
      expect(hotel.valid?).to eq(false)
    end

    it 'breakfast has to be present' do
      hotel = Hotel.new(title: 'Albatros', breakfast: '', room: 'its nicee', image: 'aaa', price: '256')
      expect(hotel.valid?).to eq(false)
    end

    it 'room description has to be present' do
      hotel = Hotel.new(title: 'Albatros', breakfast: 'yes', room: '', image: 'aaa', price: '256')
      expect(hotel.valid?).to eq(false)
    end

    it 'image has to be present' do
      hotel = Hotel.new(title: 'Albatros', breakfast: 'yes', room: 'its nicee', image: '', price: '256')
      expect(hotel.valid?).to eq(false)
    end

    it 'price has to be present' do
    hotel = Hotel.new(title: 'Albatros', breakfast: 'yes', room: 'its nicee', image: 'aaa', price: '')
    expect(hotel.valid?).to eq(false)
    end

    it 'price is numerical value' do
    hotel = Hotel.new(title: 'Albatros', breakfast: 'yes', room: 'its nicee', image: 'aaa', price: 'two hundreed dollars')
    expect(hotel.valid?).to eq(false)
    end

end
