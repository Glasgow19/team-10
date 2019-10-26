class Zone < ApplicationRecord
  has_many :exhibit
  validates :name, presence: true, uniqueness: true
end
