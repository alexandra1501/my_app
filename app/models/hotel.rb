class Hotel < ApplicationRecord
  has_many :comments
  belongs_to :street

  before_save :normalize_title

  validates :title, presence: true, uniqueness: true
  validates :breakfast, :room, :image, :price , presence: true

  mount_uploader :image, ImageUploader

  private
    def normalize_title
      self.title = title.downcase.titleize
  end

end
