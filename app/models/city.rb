class City < ApplicationRecord
  has_many :streets
  belongs_to :country, optional: true

  before_save :normalize_city_name

  validates :name, presence: true

  private
    def normalize_city_name
      self.name = name.downcase.titleize
  end
end
