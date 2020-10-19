class RemovePreferenceFromItems < ActiveRecord::Migration[6.0]
  def change
    remove_column :items, :preference, :integer
    add_column :items, :prefecture_id, :integer
  end
end
