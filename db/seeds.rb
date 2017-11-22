# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name: "EPICURE",
    address: "112 rue du Fg St-Honoré 75008 Paris",
    phone:  "0600000000",
    category: "french"
  },
  {
    name: "EL BAMBINO",
    address: "103 rue d'elise 75008 Paris",
    phone:  "0600000000",
    category: "italien"
  },
  {
    name: "ITATUMI",
    address: "10 chemin asia 75008 Paris",
    phone:  "0600000000",
    category: "japanese"
  }

]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
