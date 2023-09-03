# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# db/seeds.rb

# Helper method to generate random image URLs
def random_image_url
  image_urls = [
    "https://placehold.co/320x200",
    "https://placehold.co/320x200",
    "https://placehold.co/320x200",
    # Add more image URLs here
  ]
  image_urls.sample
end

# Seed data for products
products_data = [
  { name: "Product 1", price: 19.99 },
  { name: "Product 2", price: 29.99 },
  { name: "Product 3", price: 14.99 },
  # Add more products here
]

# Create products
products_data.each do |product_data|
  Product.create!(
    name: product_data[:name],
    price: product_data[:price],
    image_url: random_image_url
  )
end

puts "Seeded #{Product.count} products."
