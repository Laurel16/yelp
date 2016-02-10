# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Restaurant.destroy_all
estaminet = Restaurant.create(name: "L'Estaminet", phone_number: "01 42 67 89 90", address: "Villa Gaudelet", category: "french")
wall = Restaurant.create(name: "The Wall", category: "french", address: "Place de la Contrescarpe", phone_number: "01 44 66 78 90")
etoile = Restaurant.create(name: "L'Etoile d'Agadir", category: "italian", address: "Agadir", phone_number: "01 43 78 90 53 45")
bague = Restaurant.create(name: "La Bague de Kenza", category: "chinese", address: "Rue St-Maur", phone_number: "01 67 89 00 54")
milano = Restaurant.create(name: "Milano", phone_number: "01 47 12 89 90", address: "Rue Saint Sebastien", category: "italian")
sushi = Restaurant.create(name: "Shusi", category: "japanese", address: "boulevard beaumarchais", phone_number: "01 67 78 89 90")

review_estaminet = Review.create(content: Faker::Lorem.paragraph, rating: 5, restaurant_id: estaminet.id)
review_wall = Review.create(content: Faker::Lorem.paragraph, rating: 4, restaurant_id: wall.id)
review_etoile = Review.create(content: Faker::Lorem.paragraph, rating: 3, restaurant_id: etoile.id)
review_bague = Review.create(content: Faker::Lorem.paragraph, rating: 5, restaurant_id: bague.id)
review_milano = Review.create(content: Faker::Lorem.paragraph, rating: 5, restaurant_id: milano.id)
review_sushi = Review.create(content: Faker::Lorem.paragraph, rating: 5, restaurant_id: sushi.id)
