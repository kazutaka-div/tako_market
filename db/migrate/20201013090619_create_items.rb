class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :price
      t.integer :preference
      t.integer :status
      t.timestamps
    end
  end
end
