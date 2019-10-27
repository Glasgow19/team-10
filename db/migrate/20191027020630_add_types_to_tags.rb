class AddTypesToTags < ActiveRecord::Migration[6.0]
  def change
    add_column :tags, :autism, :boolean
    add_column :tags, :visual_impairment, :boolean
    add_column :tags, :hearing_impairment, :boolean
    add_column :tags, :dementia, :boolean
    add_column :tags, :epilepsy, :boolean
    add_column :tags, :physical, :boolean
  end
end
