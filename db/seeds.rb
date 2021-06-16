# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# category = Category.create({ name: 'Furniture', image_url: "https://images.unsplash.com/photo-1513694203232-719a280e022f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=749&q=80" })
 
# category = Category.create({ name: 'Gardening', image_url: "https://images.unsplash.com/photo-1618698343216-671a5d82b85a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=666&q=80" })

# category = Category.create({ name: 'Food and Brevereges', image_url: "https://localfoodnews.co.uk/wp-content/uploads/2021/01/Food-and-Beverage-B2B-News-1.jpg" })



# products = Product.create([{name: 'Throne Chair', price: 450, stock: 219, image_url: "https://www.avso.org/wp-content/uploads/files/8/9/9/20-fashionable-and-stylish-designer-chairs-throne-chairs-4-899.jpg"}, {name: 'Bed Set, Couch with side table', price: 3250, stock: 45, image_url: 'https://i.pinimg.com/474x/95/03/5f/95035f7a905c1a900a64d08e31021eb9.jpg'}, {name: 'Classy wooden table', price: 300, stock: 2, image_url: 'https://i.pinimg.com/474x/95/03/5f/95035f7a905c1a900a64d08e31021eb9.jpg'}, {name: '6 chair dinning table set', price: 1650, stock: 12, image_url: 'https://images-na.ssl-images-amazon.com/images/I/61nKGKkNHeL._SX425_.jpg'}, {name: 'Wooden Computer Table with book shelf', price: 250, stock: 50, image_url: 'https://apollo-singapore.akamaized.net/v1/files/vj60ys95x2rd3-PK/image;s=850x0'}, {name: '6 sitter gray couch', price: 2500, stock: 1, image_url: 'https://specials-images.forbesimg.com/imageserve/605e2506d0cd75c3eee1bb52/960x0.jpg?fit=scale'}])
#
#
# furniture  = { name: 'Furniture', image_url: "https://drive.google.com/file/d/1KthqF6KhROunGN_akJjqWtV_QSfPVGRy/view?usp=sharing" }


# data = Hash[furniture =>  Array.[](
#   {name: 'Throne Chair', price: 450, stock: 219, image_url: "https://www.avso.org/wp-content/uploads/files/8/9/9/20-fashionable-and-stylish-designer-chairs-throne-chairs-4-899.jpg"},
#   {name: 'Bed Set, Couch with side table', price: 3250, stock: 45, image_url: 'https://i.pinimg.com/474x/95/03/5f/95035f7a905c1a900a64d08e31021eb9.jpg'},
#   {name: 'Classy wooden table', price: 300, stock: 2, image_url: 'https://i.pinimg.com/474x/95/03/5f/95035f7a905c1a900a64d08e31021eb9.jpg'},
#   {name: '6 chair dinning table set', price: 1650, stock: 12, image_url: 'https://images-na.ssl-images-amazon.com/images/I/61nKGKkNHeL._SX425_.jpg'},
#   {name: 'Wooden Computer Table with book shelf', price: 250, stock: 50, image_url: 'https://apollo-singapore.akamaized.net/v1/files/vj60ys95x2rd3-PK/image;s=850x0'},
#   {name: '6 sitter gray couch', price: 2500, stock: 1, image_url: 'https://specials-images.forbesimg.com/imageserve/605e2506d0cd75c3eee1bb52/960x0.jpg?fit=scale'},
#   {name: 'Wooden Cupboard with mirror', price: 200, stock: 4, image_url: 'https://www.ulcdn.net/images/products/293344/original/Miller_Three_Door_Two_Drawer_LP.jpg?1584696126'},
#   {name: 'Wooden 3 door folding cupboard', price: 450, stock: 38, image_url: 'https://www.ulcdn.net/images/products/290953/original/Bocado_Columbian_Walnut_3_Door_LP.jpg'},
#   {name: 'Snake table lamp', price: 78, stock: 200, image_url: 'https://cb2.scene7.com/is/image/CB2/SnakeTableLampSHF19/$web_pdp_main_carousel_zoom_xs$/190430165808/snake-table-lamp.jpg'},
#   {name: 'Silver Desk Lamp', price: 20, stock: 58, image_url: 'https://media.istockphoto.com/photos/switched-on-vintage-or-retro-desk-lamp-on-white-table-picture-id1084534018?k=6&m=1084534018&s=612x612&w=0&h=T8-0UrciOqEfUiwjm22Np8BtXiPAmG-gAQfBAlbHyV0='},
#   {name: 'Bed side small coffee table', price: 438, stock: 45, image_url: 'https://images-na.ssl-images-amazon.com/images/I/71xR8eF75rL._AC_SY450_.jpg'},
#   {name: 'Modern night stand with drawer square end', price: 230, stock: 15, image_url: 'https://apollo-singapore.akamaized.net/v1/files/3gh31fpn0aqr-PK/image;s=850x0'},
#   {name: 'Bameos side table modern night stand with round side end', price: 100, stock: 130, image_url: 'https://images-na.ssl-images-amazon.com/images/I/71djYP85HwL._AC_SL1500_.jpg'}
# )]


# data.each do |key, value|
#   category =  !Category.exists?(key) ? Category.create(key) : Category.where(name: key["name"])
#   value.each do |p|
#     if !Product.exists?(p)
#       product = Product.create(p)
#       product.categories << category
#     end
#   end

  # Cart.create(user_id: 1)
  # Item.create(quantity: 1, product_id: 1, cart_id: 1, price: 10);
  # Item.create(quantity: 3, product_id: 2, cart_id: 1, price:45);


# end

