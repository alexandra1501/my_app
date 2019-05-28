class Hotel < ApplicationRecord
  has_many :comments
  belongs_to :street, optional: true

  before_save :normalize_title

  validates :title, presence: true, uniqueness: {message: 'Hotel already exists!'}
  validates :room, presence: true
  validates :price, presence: true, numericality: {message: 'must be written in numeric value'}
  validates :breakfast, inclusion: {in: ['yes', 'no'], message: 'please write only YES/NO'}, presence: true

  mount_uploader :image, ImageUploader

  private
    def normalize_title
      self.title = title.downcase.titleize
  end

end
