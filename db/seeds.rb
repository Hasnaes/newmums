# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Participation.destroy_all
puts "Cleaning Participation"

Message.destroy_all
puts "Cleaning Messages"

Chatroom.destroy_all
puts "Cleaning Chatroom"
Activity.destroy_all
puts "Cleaning users"
User.destroy_all

puts "success"


User.create!(
  first_name: 'michael',
  last_name: 'rodriguez',
  email: 'michael@test.com',
  username: 'michael',
  password: '123456'
)
puts "success"

User.create!(
  first_name: 'lisa',
  last_name: 'vanpraat',
  email: 'lisa@test.com',
  username: 'lisa',
  password: '123456'
)
puts "success"

 #Brussels
require "open-uri"

file = URI.open("https://res.cloudinary.com/ddazjsjwx/image/upload/v1693316351/Babytheek_logo_dkgax9.png")
activity1 = Activity.create!(
  name: 'Babytheek_Laeken',
  description: 'A babytheek is a lending service for baby stuff. It is a kind of library for things that a baby needs or that the parents use in the first 12 months after birth.',
  capacity: 15,
  address: "28 Rue Gustave Schildknechtstraat, Laeken",
  price: 30,
  location: 'Brussels',
  start_date: Date.new(2023, 9, 9),
  end_date: Date.new(2023, 9, 10),
  category: 'indoor',
  link: "https://babytheeknekkersdal.myturn.com/library/"
)

if activity1
  activity1.photo.attach(io: file, filename: "babytheek.jpg", content_type: file.content_type)
  puts "activity created successfully!"
  activity1.save
else
  puts "Failed to create! activity: #{activity1.errors.full_messages.join(', ')}"
end
puts "success"

Chatroom.create!(name: 'Babytheek', activity: activity1)

file = URI.open("https://res.cloudinary.com/ddazjsjwx/image/upload/v1693316352/treasure_hunt_nq8rw9.jpg")
activity2 = Activity.create!(
  name: 'Treasure Hunt',
  description: 'Every child receives a backpack with the equipment to complete missions (treasure map, fancy dress, puzzle, flashlight,...). Every mission gives an indication to find the password that will allow them to reach the treasure chest (where the famous collar of the golden fleece is).The children receive a little gift at the end of the game. Duration: 1h to 1h30',
  capacity: 10,
  address: "Coudenberg Palace, Place des Palais 7, 1000 Brussels",
  price: 4,
  location: 'Brussels',
  start_date: Date.new(2023, 9, 9),
  end_date: Date.new(2023, 9, 11),
  category: 'indoor',
  link: "http://www.waterloo-tourisme.com/en/battlefield-waterloo-treasure-hunt"
)
if activity2
  activity2.photo.attach(io: file, filename: "treasure.jpg", content_type: file.content_type)
  puts "Activity created successfully!"
  activity2.save
else
  puts "Failed to create! activity: #{activity2.errors.full_messages.join(', ')}"
end
puts "success"

Chatroom.create!(name: 'Treasure Hunt', activity: activity2)

file = URI.open("https://res.cloudinary.com/ddazjsjwx/image/upload/v1693316352/komini_pqogco.jpg")
activity3 = Activity.create!(
  name: 'Komini Waterloo',
  description: 'Enter KOMINI and enjoy a unique, immersive parent-child experience. Much more than an indoor playground, its a wonderland of dreams that breaks down the boundaries of imagination between adults and kids.',
  capacity: 30,
  address: "Drève Richelle 22, 1410 Waterloo, belgium",
  price: 15,
  location: 'Wallonie',
  start_date: Date.new(2023, 9, 9),
  end_date: Date.new(2023, 9, 12),
  category: 'indoor',
  link: "https://komini.be/en/"
)
if activity3
  activity3.photo.attach(io: file, filename: "komini.jpg", content_type: file.content_type)
  puts "Activity created successfully!"
  activity3.save
else
  puts "Failed to create! activity: #{activity3.errors.full_messages.join(', ')}"
end

Chatroom.create!(name: 'Komini Waterloo', activity: activity3)

#Antwerpen


file = URI.open("https://res.cloudinary.com/ddazjsjwx/image/upload/v1693317442/Plopsa_Station_sh2x1v.jpg")
activity4 = Activity.create!(
  name: 'Plopsa Station',
  description: 'Plopsa is the theme park division of Studio 100, the company operates 8 parks across Belgium, The Netherlands, Germany and Poland. Gert Verhulst as Gert in Plopsaland.',
  capacity: 100,
  address: "Mediaplein, 2018 Antwerpen",
  price: 20,
  location: 'Antwerpen',
  start_date: Date.new(2023, 9, 9),
  end_date: Date.new(2023, 9, 13),
  category: 'indoor',
  link: "https://www.plopsastationantwerp.be/fr"
)

if activity4
  activity4.photo.attach(io: file, filename: "Plopsa.jpg", content_type: file.content_type)
  puts "Activity created successfully!"
  activity4.save
else
  puts "Failed to create! activity: #{activity4.errors.full_messages.join(', ')}"
end

Chatroom.create!(name: 'Plopsa Station', activity: activity4)

file = URI.open("https://res.cloudinary.com/ddazjsjwx/image/upload/v1693317442/chocolate_nation_ilj2lg.jpg")
activity5 = Activity.create!(
  name: 'Chocolate Nation',
  description: 'Take a magical chocolate trip this summer where you will brave wild waves, get to taste velvety Belgian chocolate and feel like Sjakie in de chocoladefabriek. That is guaranteed to make the sun shine on your face. Book your ticket quickly. You will find us opposite Antwerp Central Station on Astridplein. We are open every day.',
  capacity: 100,
  address: "Koningin Astridplein 7, 2018 Antwerpen",
  price: 14,
  location: 'Antwerpen',
  start_date: Date.new(2023, 9, 7),
  end_date: Date.new(2023, 9, 10),
  category: 'indoor',
  link: "https://www.chocolatenation.be/fr"
)
if activity5
  activity5.photo.attach(io: file, filename: "chocolate-nation.jpg", content_type: file.content_type)
  puts "Activity created successfully!"
  activity5.save
else
  puts "Failed to create! activity: #{activity5.errors.full_messages.join(', ')}"
end

Chatroom.create!(name: 'Chocolate Nation', activity: activity5)



file = URI.open("https://res.cloudinary.com/ddazjsjwx/image/upload/v1693317659/zoo_antwerp_zd8ld5.jpg")
activity6 = Activity.create!(
  name: 'Antwerpen Zoo',
  description: 'Antwerp Zoo is a zoo in the centre of Antwerp, Belgium, located next to the Antwerpen-Centraal railway station. It is the oldest animal park in the country, and one of the oldest in the world, established on 21 July 1843.',
  capacity: 100,
  address: "Koningin Astridplein 20-26, 2018 Antwerpen",
  price: 26,
  location: 'Antwerpen',
  start_date: Date.new(2023, 9, 6),
  end_date: Date.new(2023, 9, 9),
  category: 'indoor',
  link: "https://www.zooantwerpen.be/fr/tickets-dentree/?gclid=Cj0KCQjw9MCnBhCYARIsAB1WQVVMT1w4O5tL9JPanCltQLbLgitf3RuLYPjyefCYjv1bubB_dMMHTX0aAsp5EALw_wcB"
)

if activity6
  activity6.photo.attach(io: file, filename: "antwerp-zoo.jpg", content_type: file.content_type)
  puts "Activity created successfully!"
  activity6.save
else
  puts "Failed to create! activity: #{activity6.errors.full_messages.join(', ')}"
end

Chatroom.create!(name: 'Antwerpen Zoo', activity: activity6)

#Gent

file = URI.open("https://res.cloudinary.com/ddazjsjwx/image/upload/v1693317760/pretland_dxz4lf.jpg")
activity7 = Activity.create!(
  name: 'Pretland Gent',
  description: 'Take a magical chocolate trip this summer where you will brave wild waves, get to taste velvety Belgian chocolate and feel like Sjakie in de chocoladefabriek. That is guaranteed to make the sun shine on your face. Book your ticket quickly. You will find us opposite Antwerp Central Station on Astridplein. We are open every day.',
  capacity: 100,
  address: "Hurstweg 8 Galveston, 9000 Gent",
  price: 10,
  location: 'Gent',
  start_date: Date.new(2023, 9, 9),
  end_date: Date.new(2023, 9, 10),
  category: 'outdoor',
  link: "https://www.ballorig.be/"
)

if activity7
  activity7.photo.attach(io: file, filename: "pretland.jpg", content_type: file.content_type)
  puts "Activity created successfully!"
  activity7.save
else
  puts "Failed to create! activity: #{activity7.errors.full_messages.join(', ')}"
end

Chatroom.create!(name: 'Pretland Gent', activity: activity7)


file = URI.open("https://res.cloudinary.com/ddazjsjwx/image/upload/v1693317902/blaarmeersen_hbgpaa.jpg")
activity8 = Activity.create!(
  name: 'Blaarmeersen',
  description: 'Blaarmeersen Sports and Recreation Park is a green jewel beside the Watersportbaan in Ghent. This is where Ghent residents come jogging, and rowing clubs battle it out on the water. The Watersportbaan in Ghent is also the setting for many festivals and activities for people of all ages.',
  capacity: 100,
  address: "Strandlaan 24, 9000 Gent",
  price: 0,
  location: 'Gent',
  start_date: Date.new(2023, 9, 9),
  end_date: Date.new(2023, 9, 17),
  category: 'outdoor',
  link: "https://stad.gent/nl/blaarmeersen"
)

if activity8
  activity8.photo.attach(io: file, filename: "blaarmeersen.jpg", content_type: file.content_type)
  puts "Activity created successfully!"
  activity8.save
else
  puts "Failed to create! activity: #{activity4.errors.full_messages.join(', ')}"
end

Chatroom.create!(name: 'Blaarmeersen', activity: activity8)




file = URI.open("")
activity9 = Activity.create!(
  name: 'Chocolate Nation',
  description: 'Take a magical chocolate trip this summer where you will brave wild waves, get to taste velvety Belgian chocolate and feel like Sjakie in de chocoladefabriek. That is guaranteed to make the sun shine on your face. Book your ticket quickly. You will find us opposite Antwerp Central Station on Astridplein. We are open every day.',
  capacity: 100,
  price: 14,
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
  puts "Failed to create! activity: #{activity9.errors.full_messages.join(', ')}"
end

Chatroom.create!(name: 'Chocolate Nation', activity: activity9)


file = URI.open("https://res.cloudinary.com/ddazjsjwx/image/upload/v1693318147/splish_splash_xrhfxl.jpg")
activity10 = Activity.create!(
  name: 'Play Beach',
  description: 'Whether you like water adventures, relaxing in a wellness pool or keeping yourself in shape by swimming laps: Ghent offers a lot of possibilities to go swimming, both indoors and outdoors. Come on, let’s dive in!.',
  capacity: 100,
  address: "Driebeekstraat 21, 9050 Gent",
  price: 14,
  location: 'Gent',
  start_date: Date.new(2023, 9, 2),
  end_date: Date.new(2023, 9, 3),
  category: 'outdoor',
  link: "https://www.playbeach.eu/"
)

if activity10
  activity10.photo.attach(io: file, filename: "splish-splash.jpg", content_type: file.content_type)
  puts "Activity created successfully!"
  activity10.save
else
  puts "Failed to create! activity: #{activity4.errors.full_messages.join(', ')}"
end

Chatroom.create!(name: 'Play Beach', activity: activity10)
