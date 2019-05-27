class Hotel < ApplicationRecord
  has_many :comments
  belongs_to :street, optional: true

  before_save :normalize_title

  validates :title, presence: true, uniqueness: {message: 'Hotel with this name already exists!'}
  validates :room, presence: true
  validates :price, presence: true, numericality: {message: 'Only numeric values'}
  validates :breakfast, inclusion: {in: ['yes', 'no'], message: 'YES/NO'}, presence: true

  mount_uploader :image, ImageUploader

  private
    def normalize_title
      self.title = title.downcase.titleize
  end

end
