class Floor < ApplicationRecord
    has_many :zone
    enum level: { one: 0, two: 1, three: 2 }
    validates :level, presence: true, uniqueness: true
end
