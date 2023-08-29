# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Creating activities"
Activity.destroy_all

User.create(
  email: 'michael@test.com',
  username: 'michael',
  password: '123456'
)

User.create(
  email: 'lisa@test.com',
  username: 'lisa',
  password: '123456'
)

 #Brussels
require "open-uri"
file = URI.open("")
activity1 = Activity.create(
  name: 'Babytheek_Laeken',
  description: 'A babytheek is a lending service for baby stuff. It is a kind of library for things that a baby needs or that the parents use in the first 12 months after birth.',
  capacity: 15,
  price: 30,
  location: 'Brussels',
  start_date: Date.new(2023, 9, 9),
  end_date: Date.new(2023, 9, 10),
  user: User.last
)
if activity1
  puts "activity created successfully!"
  activity11.save
else
  puts "Failed to create activity: #{activity1.errors.full_messages.join(', ')}"
end

file = URI.open("")
activity2 = Activity.create(
  name: 'Treasure Hunt',
  description: 'Every child receives a backpack with the equipment to complete missions (treasure map, fancy dress, puzzle, flashlight,...). Every mission gives an indication to find the password that will allow them to reach the treasure chest (where the famous collar of the golden fleece is).The children receive a little gift at the end of the game. Duration: 1h to 1h30',
  capacity: 10,
  price: 4€,
  location: 'Brussels',
  start_date: Date.new(2023, 9, 9),
  end_date: Date.new(2023, 9, 11),
  user: User.last
)

if activity2
  activity2.photo.attach(io: file, filename: "boat2.jpg", content_type: file.content_type)
  puts "Activity created successfully!"
  activity2.save
else
  puts "Failed to create activity: #{boat2.errors.full_messages.join(', ')}"
end

file = URI.open("")
activity3 = Activity.create(
  name: 'Komini Waterloo',
  description: 'Enter KOMINI and enjoy a unique, immersive parent-child experience. Much more than an indoor playground, its a wonderland of dreams that breaks down the boundaries of imagination between adults and kids.',
  capacity: 30,
  price: 15€,
  location: 'Waterloo',
  start_date: Date.new(2023, 9, 9),
  end_date: Date.new(2023, 9, 12),
  user: User.first
)

if activity3
  activity3.photo.attach(io: file, filename: "boat3.jpg", content_type: file.content_type)
  puts "Activity created successfully!"
  activity3.save
else
  puts "Failed to create activity: #{activity3.errors.full_messages.join(', ')}"
end

#Antwerpen

file = URI.open("https://res.cloudinary.com/ddazjsjwx/image/upload/v1692878953/Boat_1_d1vwp8.jpg")
activity4 = Activity.create(
  name: 'Plopsa Station',
  description: 'Plopsa is the theme park division of Studio 100, the company operates 8 parks across Belgium, The Netherlands, Germany and Poland. Gert Verhulst as Gert in Plopsaland.',
  capacity: 100,
  price: 20€,
  location: 'Antwerpen',
  start_date: Date.new(2023, 9, 9),
  end_date: Date.new(2023, 9, 13),
  user: User.last
)

if activity4
  activity4.photo.attach(io: file, filename: "boat4.jpg", content_type: file.content_type)
  puts "Activity created successfully!"
  activity4.save
else
  puts "Failed to create activity: #{activity4.errors.full_messages.join(', ')}"
end

file = URI.open("")
activity5 = Activity.create(
  name: 'Chocolate Nation',
  description: 'Take a magical chocolate trip this summer where you will brave wild waves, get to taste velvety Belgian chocolate and feel like Sjakie in de chocoladefabriek. That is guaranteed to make the sun shine on your face. Book your ticket quickly. You will find us opposite Antwerp Central Station on Astridplein. We are open every day.',
  capacity: 100,
  price: 14€,
  location: 'Antwerpen',
  start_date: Date.new(2023, 9, 7),
  end_date: Date.new(2023, 9, 10),
  user: User.last
)

if activity5
  activity5.photo.attach(io: file, filename: "boat4.jpg", content_type: file.content_type)
  puts "Activity created successfully!"
  activity5.save
else
  puts "Failed to create activity: #{activity4.errors.full_messages.join(', ')}"
end



file = URI.open("https://res.cloudinary.com/ddazjsjwx/image/upload/v1692878953/Boat_1_d1vwp8.jpg")
activity6 = Activity.create(
  name: 'Antwerpen Zoo',
  description: 'Antwerp Zoo is a zoo in the centre of Antwerp, Belgium, located next to the Antwerpen-Centraal railway station. It is the oldest animal park in the country, and one of the oldest in the world, established on 21 July 1843.',
  capacity: 100,
  price: 26€,
  location: 'Antwerpen',
  start_date: Date.new(2023, 9, 6),
  end_date: Date.new(2023, 9, 9),
  user: User.last
)

if activity6
  activity6.photo.attach(io: file, filename: "boat4.jpg", content_type: file.content_type)
  puts "Activity created successfully!"
  activity6.save
else
  puts "Failed to create activity: #{activity4.errors.full_messages.join(', ')}"
end

#Gent

file = URI.open("")
activity7 = Activity.create(
  name: 'Pretland Gent,',
  description: 'Take a magical chocolate trip this summer where you will brave wild waves, get to taste velvety Belgian chocolate and feel like Sjakie in de chocoladefabriek. That is guaranteed to make the sun shine on your face. Book your ticket quickly. You will find us opposite Antwerp Central Station on Astridplein. We are open every day.',
  capacity: 100,
  price: 10€,
  location: 'Gent',
  start_date: Date.new(2023, 9, 9),
  end_date: Date.new(2023, 9, 10),
  user: User.last
)

if activity7
  activity7.photo.attach(io: file, filename: "boat4.jpg", content_type: file.content_type)
  puts "Activity created successfully!"
  activity7.save
else
  puts "Failed to create activity: #{activity7.errors.full_messages.join(', ')}"
end



file = URI.open("")
activity8 = Activity.create(
  name: 'Blaarmeersen',
  description: 'Blaarmeersen Sports and Recreation Park is a green jewel beside the Watersportbaan in Ghent. This is where Ghent residents come jogging, and rowing clubs battle it out on the water. The Watersportbaan in Ghent is also the setting for many festivals and activities for people of all ages.',
  capacity: 100,
  price: 0,
  location: 'Gent',
  start_date: Date.new(2023, 9, 9),
  end_date: Date.new(2023, 9, 17),
  user: User.last
)

if activity8
  activity8.photo.attach(io: file, filename: "boat4.jpg", content_type: file.content_type)
  puts "Activity created successfully!"
  activity8.save
else
  puts "Failed to create activity: #{activity4.errors.full_messages.join(', ')}"
end


file = URI.open("")
activity9 = Activity.create(
  name: 'Papayoe indoor playground',
  description: 'De Papayoe biedt een in een ruime infrastructuur speelplezier en ontspanning voor alle leeftijden. Het is onmogelijk om zich hier te vervelen.',
  capacity: 100,
  price: 14€,
  location: 'Antwerpen',
  start_date: Date.new(2023, 9, 5),
  end_date: Date.new(2023, 9, 6),
  user: User.last
)

if activity9
  activity9.photo.attach(io: file, filename: "boat4.jpg", content_type: file.content_type)
  puts "Activity created successfully!"
  activity9.save
else
  puts "Failed to create activity: #{activity9.errors.full_messages.join(', ')}"
end


file = URI.open("")
activity10 = Activity.create(
  name: 'Play Beach',
  description: 'Whether you like water adventures, relaxing in a wellness pool or keeping yourself in shape by swimming laps: Ghent offers a lot of possibilities to go swimming, both indoors and outdoors. Come on, let’s dive in!.',
  capacity: 100,
  price: 14€,
  location: 'Gent',
  start_date: Date.new(2023, 9, 2),
  end_date: Date.new(2023, 9, 3),
  user: User.last
)

if activity10
  activity10.photo.attach(io: file, filename: "boat4.jpg", content_type: file.content_type)
  puts "Activity created successfully!"
  activity10.save
else
  puts "Failed to create activity: #{activity4.errors.full_messages.join(', ')}"
end
