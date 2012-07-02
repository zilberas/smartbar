# t.string  :name
# t.integer  "menu_item_id",                                                  :null => false
# t.decimal  "price",        :precision => 8, :scale => 2, :default => 0.0,   :null => false
# t.boolean  "active",
class Variant < ActiveRecord::Base
  belongs_to :menu_item
  attr_accessible :name, :menu_item_id, :price, :active
  
end
