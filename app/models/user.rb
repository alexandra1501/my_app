class User < ApplicationRecord
  has_many :comments

  validates :login, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 5 }
end
