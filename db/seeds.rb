# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Creating activities"
Activity.destroy_all

Activity.create(name: "monde d'ayden", location: "Brussel", capacity: "5", price: "10", description: "super cool and intersting activity for newmums", start_date: "1er october 2023", end_date: "5 october 2023")
