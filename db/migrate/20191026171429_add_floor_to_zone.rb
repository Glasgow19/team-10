class AddFloorToZone < ActiveRecord::Migration[6.0]
  def change
    add_reference :zones, :floor, null: false, foreign_key: true
  end
end
