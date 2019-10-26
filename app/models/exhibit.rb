class Exhibit < ApplicationRecord
  belongs_to :zone
  has_one :description
  has_many :fact
  has_many :multimedium
  has_many :tag
  validates :name, presence: true, uniqueness: true
  validates :zone_id, presence: true
end
