class CreateMultimedia < ActiveRecord::Migration[6.0]
  def change
    create_table :multimedia do |t|
      t.string :type
      t.references :exhibit, null: false, foreign_key: true

      t.timestamps
    end
  end
end
