xml.instruct!
xml.menu_items do
  @menu_items.each do |menu_item|
    xml.menu_item do
      xml.id menu_item.id
      xml.group menu_item.menu_item_type.name
      xml.name menu_item.name
      xml.description menu_item.description
      xml.price number_to_currency(menu_item.price, :format => "%n %u", :separator => ",", :delimiter => " ", :unit=>"")
      xml.active menu_item.active
    end
  end
end