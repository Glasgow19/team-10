class AddCoordinatesToZones < ActiveRecord::Migration[6.0]
  def change
    add_column :zones, :coordinates, :text
  end
end
