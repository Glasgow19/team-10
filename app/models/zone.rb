class Zone < ApplicationRecord
  has_many :exhibit
  validates :name, presence: true, uniqueness: true

  def self.zone_exhibits id
    Exhibit.where(zone_id: id)
  end
end
