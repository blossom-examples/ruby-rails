# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

if Joke.any?
  puts "Jokes already exist, skipping seeding"
  exit 0
end

# Add some initial jokes
jokes = [
  {
    content: "Why don't scientists trust atoms? Because they make up everything!",
    author: "Science Enthusiast",
    category: "puns"
  },
  {
    content: "What do you call a fake noodle? An impasta!",
    author: "Pasta Lover",
    category: "puns"
  },
  {
    content: "Why did the scarecrow win an award? Because he was outstanding in his field!",
    author: "Farm Humor",
    category: "dad jokes"
  },
  {
    content: "What do you call a bear with no teeth? A gummy bear!",
    author: "Wildlife Joker",
    category: "dad jokes"
  },
  {
    content: "Knock, knock. Who's there? Lettuce. Lettuce who? Lettuce in, it's cold out here!",
    author: "Vegetable Fan",
    category: "knock-knock"
  },
  {
    content: "I'm reading a book on anti-gravity. It's impossible to put down!",
    author: "Physics Buff",
    category: "one-liners"
  },
  {
    content: "I used to play piano by ear, but now I use my hands.",
    author: "Music Enthusiast",
    category: "one-liners"
  },
  {
    content: "Why don't eggs tell jokes? They'd crack up!",
    author: "Breakfast Club",
    category: "dad jokes"
  },
  {
    content: "What do you call a bear with no teeth and no fur? A gummy bear!",
    author: "Wildlife Joker",
    category: "dad jokes"
  },
  {
    content: "I'm on a seafood diet. I see food and I eat it!",
    author: "Foodie",
    category: "one-liners"
  }
]

jokes.each do |joke_data|
  Joke.create!(joke_data)
end

puts "Created #{Joke.count} jokes"
