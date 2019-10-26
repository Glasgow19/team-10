class Fact < ApplicationRecord
  belongs_to :exhibit
  validates :exhibit_id, presence: true
end
