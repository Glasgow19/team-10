class CreateDescriptions < ActiveRecord::Migration[6.0]
  def change
    create_table :descriptions do |t|
      t.text :text
      t.references :exhibit, null: false, foreign_key: true

      t.timestamps
    end
  end
end
