# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

stores = Store.create([{location: "Boston", location: "Cancun", location: "Seattle"}])
Product.create({store_id: 1, title: "kayak", description: "paddle the Charles", price: 21.99})
Product.create({store_id: 1, title: "cannoli", description: "stop by our store for a tasty authentic treat!", price: 3.50})
Product.create({store_id: 2, title: "sunscreen", description: "Love the sunner, hate the sunburn", price: 8.99})
Product.create({store_id: 2, title: "beach umbrella", description: "Ahhh, the beach."}, price: 15.49})
Product.create({store_id: 3, title: "umbrella", description: "I'm just singin' in the rain!", price: 18.54})