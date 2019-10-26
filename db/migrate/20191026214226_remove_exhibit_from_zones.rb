class RemoveExhibitFromZones < ActiveRecord::Migration[6.0]
  def change
    remove_reference :zones, :exhibit, null: false, foreign_key: true
  end
end
