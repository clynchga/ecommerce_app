# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

stores = Store.create([{location: "Austin"}, {location: "Boston"}, {location: "Chicago"}, {location: "Denver"}])
Product.create(title: "Heffalump", description: "A very frightening purchase indeed", price: "56.70", store_id: stores.first.id)
Product.create(title: "burrito", description: "Mmmmmmm good", price: 6.59, store_id: stores.first.id)