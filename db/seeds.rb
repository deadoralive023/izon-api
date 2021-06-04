# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
#

  category = Category.create({ name: 'Furniture', image_url: "https://drive.google.com/file/d/1KthqF6KhROunGN_akJjqWtV_QSfPVGRy/view?usp=sharing" })
 
  products = Product.create([{name: 'Throne Chair', price: 450, stock: 219, image_url: "https://www.avso.org/wp-content/uploads/files/8/9/9/20-fashionable-and-stylish-designer-chairs-throne-chairs-4-899.jpg"}, {name: 'Bed Set, Couch with side table', price: 3250, stock: 45, image_url: 'https://i.pinimg.com/474x/95/03/5f/95035f7a905c1a900a64d08e31021eb9.jpg'}, {name: 'Classy wooden table', price: 300, stock: 2, image_url: 'https://i.pinimg.com/474x/95/03/5f/95035f7a905c1a900a64d08e31021eb9.jpg'}, {name: '6 chair dinning table set', price: 1650, stock: 12, image_url: 'https://images-na.ssl-images-amazon.com/images/I/61nKGKkNHeL._SX425_.jpg'}, {name: 'Wooden Computer Table with book shelf', price: 250, stock: 50, image_url: 'https://apollo-singapore.akamaized.net/v1/files/vj60ys95x2rd3-PK/image;s=850x0'}, {name: '6 sitter gray couch', price: 2500, stock: 1, image_url: 'https://specials-images.forbesimg.com/imageserve/605e2506d0cd75c3eee1bb52/960x0.jpg?fit=scale'}])



  products.each { |p| p.categories << category }

