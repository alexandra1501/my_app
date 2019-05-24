require 'rails_helper'

RSpec.describe Street, type: :model do

  it 'name should be present' do
    street = Street.new(name:'')
    expect(street.valid?).to eq(false)
  end

end
