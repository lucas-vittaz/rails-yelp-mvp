# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
puts "Cleaning database..."

Restaurant.destroy_all

puts "Creating restaurants..."

dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "02943903434", category: "chinese"   }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "39843090", category: "italian" }
macdo =  { name: "Mac Donalds", address: "33 Nantes", phone_number: "93884938", category: "belgian" }
papilles =  { name: "Papilles", address: "Au fond à droite", phone_number: "29302043", category: "french" }
ritz =  { name: "Ritz", address: "Paris dans le coin riche là", phone_number: "20003932", category: "french" }

[ dishoom, pizza_east, macdo, papilles, ritz ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts "Finished!"
