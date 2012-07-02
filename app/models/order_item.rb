#t.integer   :menu_item_id
#t.integer   :order_id

class OrderItem < ActiveRecord::Base
  belongs_to :menu_item
  belongs_to :order
  attr_accessible :menu_item_id, :order_id
end
