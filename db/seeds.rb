# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Favorite.destroy_all
User.destroy_all

user1 = User.create(username:"Blake", password: "p", location: "CO")
favorite1 = Favorite.create(name: "Moraine Park", latitude: "40.3602", longitude: "-105.6045", user: user1)
favorite2= Favorite.create(name: "Outside Needles Canyon Lands", latitude: "38.225430", longitude: "-109.675245", user: user1)
favorite3= Favorite.create(name: "Outside of Arches", latitude: "38.727378", longitude: "-109.665599", user: user1)

