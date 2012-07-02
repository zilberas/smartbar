#utf-8
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



admin = Admin.create! do |u|
  u.email = 'admin@admin.com'
  u.password = 'pass123'
  u.password_confirmation = 'pass123'
end
#admin.confirm!
puts 'New admin created!'
puts 'Email   : ' << admin.email
puts 'Password: ' << admin.password

