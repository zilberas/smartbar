class MenuItemType < ActiveRecord::Base
  has_many :menu_items

  attr_accessible :name
end
