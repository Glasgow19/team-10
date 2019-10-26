class Exhibit < ApplicationRecord
  has_one :description
  has_many :fact
  validates :name, presence: true, uniqueness: true
end
