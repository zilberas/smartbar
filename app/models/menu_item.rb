#t.string  :name
#t.text    :description
#t.integer :menu_item_type_id,       :null => false
#t.decimal :price,     :precision => 8, :scale => 2, :default => 0.0,  :null => false
#t.boolean :active,    :default => false, :null => false


class MenuItem < ActiveRecord::Base
  belongs_to  :menu_item_type
  has_many    :variants
  has_many    :order_items
  has_many    :orders, :through => :order_items
  
  attr_accessible :name, :menu_item_type_id, :description, :price, :active
end
