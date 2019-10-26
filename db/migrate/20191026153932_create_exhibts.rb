class CreateExhibts < ActiveRecord::Migration[6.0]
  def change
    create_table :exhibts do |t|
      t.string :name

      t.timestamps
    end
  end
end
