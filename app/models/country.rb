class Country < ApplicationRecord
  has_many :cities

  before_save :normalize_country_name

  validates :name, presence: true

  private
    def normalize_country_name
      self.name = name.downcase.titleize
  end
end
