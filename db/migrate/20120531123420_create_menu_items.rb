class CreateMenuItems < ActiveRecord::Migration
  def change
    create_table :menu_items do |t|
      t.string  :name
      t.text    :description
      t.integer :menu_item_type_id,       :null => false
      t.decimal :price,     :precision => 8, :scale => 2, :default => 0.0,  :null => false
      t.boolean :active,    :default => false, :null => false

      t.timestamps
    end
  end
end
