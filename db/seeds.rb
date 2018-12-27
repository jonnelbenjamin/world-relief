# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Country.destroy_all
AidOrganization.destroy_all

countries = [
  {name:"Syria", city:"Damascus", people_group:"Yazidi", aid_reason:"Civil War"},
  {name:"Syria", city:"Aleppo", people_group:"Kurds", aid_reason:"Civil War"},
  {name:"Syria", city:"Homs", people_group:"Arabs", aid_reason:"Famine"},
  {name:"Syria", city:"Damascus", people_group:"Turkmen", aid_reason:"Civil War"},
  {name:"Haiti", city:"Port-au-Prince", people_group:"Haitians", aid_reason:"Poverty"},
  {name:"Haiti", city:"Port-au-Prince", people_group:"Haitians", aid_reason:"Human Trafficking"},
  {name:"Haiti", city:"Carrefour", people_group:"Marabou", aid_reason:"Famine"},
  {name:"Haiti", city:"Miragoane", people_group:"Maroons", aid_reason:"Hurricane"},
  {name:"Indonesia", city:"Bandung", people_group:"Javanese", aid_reason:"Human Trafficking"},
  {name:"Indonesia", city:"Manado", people_group:"Manadonese", aid_reason:"Poverty"},
  {name:"Indonesia", city:"Jakarta", people_group:"Ambon", aid_reason:"Waste Disposal/Pollution"},
  {name:"Indonesia", city:"Bali", people_group:"Balinese", aid_reason:"Earthquake"}
]

countries.each {|country| Country.create(country)}

users = [
  {name:"Jonnel Benjamin", age:23, country:"United States", profession:"Student"},
  {name:"Jimmy Seibert", age:55, country:"United States", profession:"Pastor"},
  {name:"Matt Wilborn", age:23, country:"United States", profession:"Banker"},
  {name:"Aaron Moldovan", age:22, country:"Indonesia", profession:"Aid Worker"}
]
users.each {|user| User.create(user)}

aid_organizations = [
  {name:"USAID", country_of_field_work:"Syria", city_of_field_work:"Aleppo", number_of_field_workers:25, monetary_need:10000},
  {name:"United Nations", country_of_field_work:"Syria", city_of_field_work:"Damascus", number_of_field_workers:48, monetary_need:990000},
  {name:"Red Cross", country_of_field_work:"Haiti", city_of_field_work:"Port-au-Prince", number_of_field_workers:72, monetary_need:114400},
  {name:"World Bank", country_of_field_work:"Indonesia", city_of_field_work:"Bali", number_of_field_workers:15, monetary_need:110000},
  {name:"Mercy Corps", country_of_field_work:"Syria", city_of_field_work:"Damascus", number_of_field_workers:92, monetary_need:210000},
  {name:"United Nations", country_of_field_work:"Indonesia", city_of_field_work:"Jakarta", number_of_field_workers:4, monetary_need:1490000},
  {name:"Acts of Mercy", country_of_field_work:"Indonesia", city_of_field_work:"Bandung", number_of_field_workers:11, monetary_need:14900},
]

aid_organizations.each {|aid_organization| AidOrganization.create(aid_organization)}
