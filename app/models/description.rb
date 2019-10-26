class Description < ApplicationRecord
  belongs_to :exhibit
  validates :exhibit_id, presence: true, uniqueness: true
end
