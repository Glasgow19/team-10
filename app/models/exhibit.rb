class Exhibit < ApplicationRecord
  has_one :description
  validates :name, presence: true, uniqueness: true
end
