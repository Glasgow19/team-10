class Tag < ApplicationRecord
  belongs_to :exhibit
  enum name: { autism: 0, visual_impairment: 1, hearing_impairment: 2, dementia: 3, epilepsy: 4, physical: 5 }
  validates :name, presence: true
end
