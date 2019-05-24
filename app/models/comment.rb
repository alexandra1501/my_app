class Comment < ApplicationRecord
  belongs_to :hotel
  belongs_to :user

  validates :rating, presence: true, inclusion: {in: 1..5}
  validates :content, presence: true, length: { maximum: 500, message: 'Comment shouldnt be longer than 500 characters' }
end
