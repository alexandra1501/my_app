require 'rails_helper'

RSpec.describe City, type: :model do

  it 'name should be present' do
    city = City.new(name: '')
    expect(city.valid?).to eq(false)
  end

end
