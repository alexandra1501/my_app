require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'validation tests' do
    it 'creates a new user' do
      user = User.create!(login: 'lalala', password: 'aaaaaa')
      expect(User.all.count).to eq(1)
    end

    it 'password cant be shorter than 5 characters' do
      user = User.create!(login: 'sasha', password:'12345')
      expect(user.valid?).to eq(true)
    end

    it 'checks if login is unique' do
      user1 = User.create!(login: 'sasha', password: '12345')
      user2 = User.new(login: 'sasha', password: '54321')
      expect(user2.valid?).to eq(false)
    end

    it 'checks if login is present' do
      user = User.new(login: '', password: '123456')
      expect(user.valid?).to eq(false)
    end

    it 'checks if password is present' do
      user = User.new(login: 'sashaaa', password: '')
       expect(user.valid?).to eq(false)
    end

  end

end
