class AddTypesToTags < ActiveRecord::Migration[6.0]
  def change
    add_column :tags, :autism, :boolean, default: false
    add_column :tags, :visual_impairment, :boolean, default: false
    add_column :tags, :hearing_impairment, :boolean, default: false
    add_column :tags, :dementia, :boolean, default: false
    add_column :tags, :epilepsy, :boolean, default: false
    add_column :tags, :physical, :boolean, default: false
  end
end
