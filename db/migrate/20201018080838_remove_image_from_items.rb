class RemoveImageFromItems < ActiveRecord::Migration[6.0]
  def change
    reversible do |dir|
      change_table :items do |t|
        dir.up   { t.change :image, :string }
        dir.down { t.change :image, :text }
      end
    end
  end
end
