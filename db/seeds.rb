# encoding: UTF-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Guest.find_or_create_by_name_and_email("Vardas Pavardenis",       "varpav@mail.com")
Guest.find_or_create_by_name_and_email("Jonas Jonaitis",          "jonas@mail.com")
Guest.find_or_create_by_name_and_email("Petras Petronis",         "petras@mail.com")
Guest.find_or_create_by_name_and_email("Likvidija Anubraukaite",  "likanu@mail.com")
Guest.find_or_create_by_name_and_email("Perbaltaras Zomzska",     "zomzom@mail.com")
Guest.find_or_create_by_name_and_email("Kostiumas Paburka",       "kostia@mail.com")
Guest.find_or_create_by_name_and_email("Nantrimas Macakalakauskas","nan@mail.com")
Guest.find_or_create_by_name_and_email("Audrijunta Parul",        "aupar@mail.com")
Guest.find_or_create_by_name_and_email("Sekmadienis Paziba",      "sekm@mail.com")
Guest.find_or_create_by_name_and_email("Nukleonas Atausas",       "nukl@mail.com")
Guest.find_or_create_by_name_and_email("Balstytis Andrijauskas",  "balandr@mail.com")
Guest.find_or_create_by_name_and_email("Keplera Stukaite",        "kepstu@mail.com")
Guest.find_or_create_by_name_and_email("Liuosajevas Zabyla",      "liuoza@mail.com")
Guest.find_or_create_by_name_and_email("Kledarte Momentyte",      "klemom@mail.com")
Guest.find_or_create_by_name_and_email("Spejauskas Sliziunas",    "spesli@mail.com")
Guest.find_or_create_by_name_and_email("Gaudene Paburkelnyte",    "gaupab@mail.com")


MenuItemType.delete_all
open("#{Rails.root}/config/menuItemTypes.txt") do |types|
  types.read.each_line do |type|
    name = type.chomp
    MenuItemType.create!(:name => name)
  end
end

MenuItem.delete_all
open("#{Rails.root}/config/menuItems.txt") do |file|
  file.read.each_line do |item|
    menuType, name, description, price = item.chomp.split("|")
    menuTypeId = MenuItemType.find_by_name(menuType).id
    MenuItem.create!(:menu_item_type_id => menuTypeId, :name => name, :description => description, :price => price, :active => true)
  end
end

Admin.delete_all
Admin.create!(:email =>"admin@admin.com", :password =>"kosmosas", :password_confirmation =>"kosmosas")
#admin.confirm!
#puts 'New admin created!'
#puts 'Email   : ' << admin.email
#puts 'Password: ' << admin.password

