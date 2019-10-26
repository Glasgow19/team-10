class CreateFacts < ActiveRecord::Migration[6.0]
  def change
    create_table :facts do |t|
      t.text :text
      t.references :exhibit, null: false, foreign_key: true

      t.timestamps
    end
  end
end
