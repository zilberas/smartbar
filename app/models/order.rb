#t.integer :table_id
class Order < ActiveRecord::Base
  has_many    :order_items
  has_many    :menu_items, :through => :order_items
  attr_accessible :table_id, :menu_items, :completed, :username, :phone
  
  self.per_page = 5
  
  def parse_items(params)      
    #is stringo "[2,1,3,2]" i masyva int[2,1,3,2]
    return params.gsub(/[\[\]]/, '').split(",").map {|s|s.to_i}
  end
  
end
