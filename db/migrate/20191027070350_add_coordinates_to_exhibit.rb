class AddCoordinatesToExhibit < ActiveRecord::Migration[6.0]
  def change
    add_column :exhibits, :coordinates, :text
  end
end
