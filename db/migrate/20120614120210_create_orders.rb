class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :table_id
      t.boolean :completed, :default => false
      t.string :username
      t.string :phone
      
      t.timestamps
    end
  end
end
