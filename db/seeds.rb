# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
    Product.destroy_all
    products = Product.create([{
    id: 1,
    name: "Water Bottle",
    description: "Gatorade squeeze style water bottle",
    image: "bottle.jpg",
    seller: nil,
    quantity: 986,
    rating: nil,
    price: 0.155e2,},
    
    {
    id: 2,
    name: "Game Jersey",
    description: "Navy Hockey team jersey (home)",
    image: "jersey.jpg",
    seller: nil,
    quantity: 993,
    rating: nil,
    price: 0.1005e3,}

    {
    id: 3,
    name: "Clear Tape",
    description:
     "Clear hockey tape for multipurpose use and taping socks",
    image: "clearTape.jpg",
    seller: nil,
    quantity: 6,
    rating: nil,
    price: 0.52e1,}

    {
    id: 4,
    name: "Black Tape",
    description: "Black hockey tape for sticks and cuts",
    image: "blackTape.jpg",
    seller: nil,
    quantity: 496,
    rating: nil,
    price: 0.55e1,}])