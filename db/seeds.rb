# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.destroy_all
# restaurants_attributes = [
#   {
#     name:         "Epicure au Bristol",
#     address:      "112 rue du Fg St-Honoré 75008 Paris",
#     content:      "Face au jardin, on découvre une salle lumineuse... et la cuisine d'Éric Frechon.",
#     phone_number: "01.01.01.01.01"
#   }
#     name:         "La truffière",
#     address:      "4 rue Blainville 75005 Paris",
#     content:      "Une valeur sûre que cette belle maison du 17e et les recettes de Jean-Christophe Rizet",
#     phone_number: "02.02.02.02.02"
#   }

#   {
#     name:         "Le pré catelan",
#     address:      "route de Suresnes 75016 Paris",
#     content:      "Oeil vif, geste sûr: impossible de distinguer, dans les créations de Frédéric Anton...",
#     phone_number: "03.03.03.03.03"
#   }
# ]
# restaurants_attributes.each { |params| Restaurant.create!(params) }
10.times do |n|
    Restaurant.create!(name: Faker::Lorem.sentence, address: Faker::Address.street_address, category: Faker::Address.country, phone_number:Faker::PhoneNumber.phone_number)
  end
