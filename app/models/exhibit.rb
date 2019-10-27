class Exhibit < ApplicationRecord
  belongs_to :zone
  has_one :description
  has_many :fact
  has_many :multimedium
  has_many :tags
  validates :name, presence: true, uniqueness: true
  validates :zone_id, presence: true

  def self.exhibit_tags id
    Tag.where.not(autism: 1).or(Tag.where.not(visual_impairment: 1).or(Tag.where.not(hearing_impairment: 1).or(Tag.where.not(dementia: 1).or(Tag.where.not(epilepsy: 1).or(Tag.where.not(physical: 1))))))
  end
end
