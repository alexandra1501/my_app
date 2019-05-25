require 'rails_helper'

RSpec.describe City, type: :model do

  it 'name should be present' do
    city = City.new(name: '')
    expect(city.valid?).to eq(false)
  end

  it 'name should be normalised' do
    city = City.create!(name: 'romE')
    expect(city.name).to eq("Rome")
  end

end
