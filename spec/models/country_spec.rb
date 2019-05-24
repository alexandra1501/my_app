require 'rails_helper'

RSpec.describe Country, type: :model do

  it 'name should be present' do
    country = Country.new(name:'')
    expect(country.valid?).to eq(false)
  end

end
