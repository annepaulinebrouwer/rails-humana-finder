puts "Cleaning database"
Review.destroy_all
User.destroy_all
Shop.destroy_all

puts "Building a user shop and review"
user = User.create(
  firstname: "Paula",
  lastname: "Rocks",
  email: "hello@email.com",
  password: "hellohello"
)

shop = Shop.create(
  name: "Europas Grösstes Secondhand-Kaufhaus",
  street: "Frankfurter Tor 3",
  zipcode: "10243",
  city: "Berlin",
  neighbourhood: "Friedrichshain",
  popup: false
)

shop.reviews.create(
  description: "Amazing big secondhand shop. Found a really nice jeans.",
  rating: 5,
  user_id: user.id
)
puts "Finished"
