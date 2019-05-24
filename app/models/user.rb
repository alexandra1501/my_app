class User < ApplicationRecord
  has_many :comments

  validates :login, presence: true, uniqueness: true, length: { maximum: 20, message: 'Must be shorter than 20 characters' }
  validates :password, presence: true, length: { minimum: 5 , message: 'Must be longer than 5 characters' }

end
