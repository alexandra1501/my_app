class Street < ApplicationRecord
  has_many :hotels
  belongs_to :city, optional: true

  accepts_nested_attributes_for :hotels, :city

  before_save :normalize_street_name

  validates :name , presence: true

  private
    def normalize_street_name
      self.name = name.downcase.titleize
  end
end
