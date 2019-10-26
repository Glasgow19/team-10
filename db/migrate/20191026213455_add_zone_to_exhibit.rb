class AddZoneToExhibit < ActiveRecord::Migration[6.0]
  def change
    add_reference :exhibits, :zone, index: true
  end
end