require 'rails_helper'

RSpec.describe Hotel, type: :model do

    before(:each) do
      country = Country.new(name: 'Ukraine')
      city = City.new(name: 'Kyiv')
      street = Street.new(name: 'Tarasa')
    end

    it 'title has to be present' do
      hotel = Hotel.create(title: '', breakfast: 'yes', room: 'its nicee', image: 'aaa', price: '256$')
      expect(hotel.valid?).to eq(false)
    end

    it 'breakfast has to be present' do
      hotel = Hotel.new(title: 'Albatros', breakfast: '', room: 'its nicee', image: 'aaa', price: '256$')
      expect(hotel.valid?).to eq(false)
    end

    it 'room description has to be present' do
      hotel = Hotel.new(title: 'Albatros', breakfast: 'yes', room: '', image: 'aaa', price: '256$')
      expect(hotel.valid?).to eq(false)
    end

    it 'image has to be present' do
      hotel = Hotel.new(title: 'Albatros', breakfast: 'yes', room: 'its nicee', image: '', price: '256$')
      expect(hotel.valid?).to eq(false)
    end

end
