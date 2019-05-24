require 'rails_helper'

RSpec.describe Comment, type: :model do

  it 'rating should be present' do
    comment = Comment.new(rating: '', content: 'your app is great')
    expect(comment.valid?).to eq(false)
  end

  it 'rating should be included in 1..5 range' do
    comment = Comment.new(rating: '20', content: 'your app is great')
    expect(comment.valid?).to eq(false)
  end

  it 'content should be present' do
    comment = Comment.new(rating: '5', content: '')
    expect(comment.valid?).to eq(false)
  end

#  it 'content should be shorter than 500 characters' do
#    comment = Comment.new(rating: '5', content: {}

end
