require 'rails_helper'

RSpec.describe Street, type: :model do

  it 'name should be present' do
    street = Street.new(name:'')
    expect(street.valid?).to eq(false)
  end

  it 'name should be normalised' do
    city = City.create!(name: 'Rome')
    country = Country.create!(name: 'Italy')
    street = Street.create!(name: 'gRodzka')
    expect(street.name).to eq("Grodzka")
  end

end
