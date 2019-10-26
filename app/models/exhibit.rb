class Exhibit < ApplicationRecord
  has_one :description
  has_many :fact
  has_many :multimedium
  validates :name, presence: true, uniqueness: true
end
