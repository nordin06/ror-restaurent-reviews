puts "cleaning database..."
Restaurant.destroy_all

puts "creating restaurants..."
dishoom {name: "Dishoom", adress: "7 rue tonton Nice", stars: 5}
pizza_east { name: "Pizza East", adress: "15 Rue de l'ariane, Nice", stars: 3}
[ dishoom, pizza_east].each do |attributes|
    restaurant = Restaurant.create!(attributes)
    puts "Created #{restaurant.name}"
end
puts "finished"

restaurant = Restaurant.new(name: "mcDo")
restaurant.save



# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
