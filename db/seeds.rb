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



file1 = URI.open("https://res.cloudinary.com/ddazjsjwx/image/upload/v1693316351/Babytheek_logo_dkgax9.png")
file2 = URI.open("https://res.cloudinary.com/ddazjsjwx/image/upload/v1693560039/babytheek2_j6wec6.jpg")
file3 = URI.open("https://res.cloudinary.com/ddazjsjwx/image/upload/v1693560039/babytheek3_swwm8b.jpg")
activity1 = Activity.create!(
  name: 'Babytheek Laeken',
  description: 'A babytheek is a lending service for baby stuff. It is a kind of library for things that a baby needs or that the parents use in the first 12 months after birth.',
  capacity: 15,
  address: "28 Rue Gustave Schildknechtstraat, Laeken",
  price: 30,
  location: 'Brussels',
  start_date: Date.new(2023, 9, 9),
  end_date: Date.new(2023, 9, 10),
  category: 'indoor',
  link: "https://babytheeknekkersdal.myturn.com/library/",
  latitude: 50.87343215942383,
  longitude: 4.347685813903809
  latitude: 50.873312,
  longitude: 4.3475352
)

if activity1
  activity1.photos.attach(io: file1, filename: "babytheek.jpg", content_type: file1.content_type)
  activity1.photos.attach(io: file2, filename: "babytheek2.jpg", content_type: file2.content_type)
  activity1.photos.attach(io: file3, filename: "babytheek3.jpg", content_type: file3.content_type)
  puts "activity created successfully!"
  activity1.save
else
  puts "Failed to create! activity: #{activity1.errors.full_messages.join(', ')}"
end
puts "success"

Chatroom.create!(name: 'Babytheek', activity: activity1)

file1 = URI.open("https://res.cloudinary.com/ddazjsjwx/image/upload/v1693316352/treasure_hunt_nq8rw9.jpg")
file2 = URI.open("https://res.cloudinary.com/ddazjsjwx/image/upload/v1693560831/treasurehunt2_zuqdzp.jpg")
file3 = URI.open("https://res.cloudinary.com/ddazjsjwx/image/upload/v1693560831/treasurehunt3_iqrg2d.jpg")

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
  link: "http://www.waterloo-tourisme.com/en/battlefield-waterloo-treasure-hunt",
  latitude: 50.8466,
  longitude: 4.3528
)
if activity2
  activity2.photos.attach(io: file1, filename: "treasure.jpg", content_type: file1.content_type)
  activity2.photos.attach(io: file2, filename: "treasure.jpg", content_type: file2.content_type)
  activity2.photos.attach(io: file3, filename: "treasure.jpg", content_type: file3.content_type)
  puts "Activity created successfully!"
  activity2.save
else
  puts "Failed to create! activity: #{activity2.errors.full_messages.join(', ')}"
end
puts "success"

Chatroom.create!(name: 'Treasure Hunt', activity: activity2)

file1 = URI.open("https://res.cloudinary.com/ddazjsjwx/image/upload/v1693316352/komini_pqogco.jpg")
file2 = URI.open("https://res.cloudinary.com/ddazjsjwx/image/upload/v1693560831/komini2_ra4bnd.jpg")
file3 = URI.open("https://res.cloudinary.com/ddazjsjwx/image/upload/v1693560831/komin3_boegff.jpg")

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
  link: "https://komini.be/en/",
  latitude: 50.71044,
  longitude: 4.403585
)
if activity3
  activity3.photos.attach(io: file1, filename: "komini.jpg", content_type: file1.content_type)
  activity3.photos.attach(io: file2, filename: "komini.jpg", content_type: file2.content_type)
  activity3.photos.attach(io: file3, filename: "komini.jpg", content_type: file3.content_type)
  puts "Activity created successfully!"
  activity3.save
else
  puts "Failed to create! activity: #{activity3.errors.full_messages.join(', ')}"
end

Chatroom.create!(name: 'Komini Waterloo', activity: activity3)



#Antwerpen


file1 = URI.open("https://res.cloudinary.com/ddazjsjwx/image/upload/v1693317442/Plopsa_Station_sh2x1v.jpg")
file2 = URI.open("https://res.cloudinary.com/ddazjsjwx/image/upload/v1693561414/plospa-station3_ibsrrc.jpg")
file3 = URI.open("https://res.cloudinary.com/ddazjsjwx/image/upload/v1693561415/Plopsa-Station2_jzmuuw.jpg")


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
  link: "https://www.plopsastationantwerp.be/fr",
  latitude: 51.2128446,
  longitude: 4.421058
)

if activity4
  activity4.photos.attach(io: file1, filename: "Plopsa.jpg", content_type: file1.content_type)
  activity4.photos.attach(io: file2, filename: "Plopsa.jpg", content_type: file2.content_type)
  activity4.photos.attach(io: file3, filename: "Plopsa.jpg", content_type: file3.content_type)

  puts "Activity created successfully!"
  activity4.save
else
  puts "Failed to create! activity: #{activity4.errors.full_messages.join(', ')}"
end

Chatroom.create!(name: 'Plopsa Station', activity: activity4)

file1 = URI.open("https://res.cloudinary.com/ddazjsjwx/image/upload/v1693317442/chocolate_nation_ilj2lg.jpg")
file2 = URI.open("https://res.cloudinary.com/ddazjsjwx/image/upload/v1693561412/chocolatenation3_yqn771.jpg")
file3= URI.open("https://res.cloudinary.com/ddazjsjwx/image/upload/v1693561411/chocolatenation4_vv04d9.jpg")

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
  link: "https://www.chocolatenation.be/fr",
  latitude: 51.2192003,
  longitude: 4.420874
)
if activity5
  activity5.photos.attach(io: file1, filename: "chocolate-nation.jpg", content_type: file1.content_type)
  activity5.photos.attach(io: file2, filename: "chocolate-nation.jpg", content_type: file2.content_type)
  activity5.photos.attach(io: file3, filename: "chocolate-nation.jpg", content_type: file3.content_type)

  puts "Activity created successfully!"
  activity5.save
else
  puts "Failed to create! activity: #{activity5.errors.full_messages.join(', ')}"
end

Chatroom.create!(name: 'Chocolate Nation', activity: activity5)


file1 = URI.open("https://res.cloudinary.com/ddazjsjwx/image/upload/v1693317659/zoo_antwerp_zd8ld5.jpg")
file2 = URI.open("https://res.cloudinary.com/ddazjsjwx/image/upload/v1693562245/antwerpzoo2_aqasye.jpg")
file3 = URI.open("https://res.cloudinary.com/ddazjsjwx/image/upload/v1693562243/antwerpzoo3_txacql.jpg")

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
  link: "https://www.zooantwerpen.be/fr/tickets-dentree/?gclid=Cj0KCQjw9MCnBhCYARIsAB1WQVVMT1w4O5tL9JPanCltQLbLgitf3RuLYPjyefCYjv1bubB_dMMHTX0aAsp5EALw_wcB",

  latitude: 51.218067,
  longitude: 4.421839
)

if activity6
  activity6.photos.attach(io: file1, filename: "antwerp-zoo.jpg", content_type: file1.content_type)
  activity6.photos.attach(io: file2, filename: "antwerp-zoo.jpg", content_type: file2.content_type)
  activity6.photos.attach(io: file3, filename: "antwerp-zoo.jpg", content_type: file3.content_type)

  puts "Activity created successfully!"
  activity6.save
else
  puts "Failed to create! activity: #{activity6.errors.full_messages.join(', ')}"
end

Chatroom.create!(name: 'Antwerpen Zoo', activity: activity6)


#Gent

file1 = URI.open("https://res.cloudinary.com/ddazjsjwx/image/upload/v1693317760/pretland_dxz4lf.jpg")
file2 = URI.open("https://res.cloudinary.com/ddazjsjwx/image/upload/v1693562244/pretland2_pxumv6.jpg")
file3 = URI.open("https://res.cloudinary.com/ddazjsjwx/image/upload/v1693562244/pretland3_ji1l45.jpg")

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
  link: "https://www.ballorig.be/",
  latitude: 51.0744215,
  longitude: 3.7232245
)

if activity7
  activity7.photos.attach(io: file1, filename: "pretland.jpg", content_type: file1.content_type)
  activity7.photos.attach(io: file2, filename: "pretland.jpg", content_type: file2.content_type)
  activity7.photos.attach(io: file3, filename: "pretland.jpg", content_type: file3.content_type)

  puts "Activity created successfully!"
  activity7.save
else
  puts "Failed to create! activity: #{activity7.errors.full_messages.join(', ')}"
end

Chatroom.create!(name: 'Pretland Gent', activity: activity7)

file1 = URI.open("https://res.cloudinary.com/ddazjsjwx/image/upload/v1693317902/blaarmeersen_hbgpaa.jpg")
file2 = URI.open("https://res.cloudinary.com/ddazjsjwx/image/upload/v1693562244/blasmeeran3_qsaevl.jpg")
file3 = URI.open("https://res.cloudinary.com/ddazjsjwx/image/upload/v1693562244/blaarmeersen3_pbmrct.jpg")

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
  link: "https://stad.gent/nl/blaarmeersen",
  latitude: 51.0484104,
  longitude: 3.6921805
)

if activity8
  activity8.photos.attach(io: file1, filename: "blaarmeersen.jpg", content_type: file1.content_type)
  activity8.photos.attach(io: file2, filename: "blaarmeersen.jpg", content_type: file2.content_type)
  activity8.photos.attach(io: file3, filename: "blaarmeersen.jpg", content_type: file3.content_type)

  puts "Activity created successfully!"
  activity8.save
else
  puts "Failed to create! activity: #{activity8.errors.full_messages.join(', ')}"
end

Chatroom.create!(name: 'Blaarmeersen', activity: activity8)

# file = URI.open("")
# activity9 = Activity.create!(
#   name: 'Het Paleis',
#   description: 'This is an imaginative city theatre where most productions are aimed at children. The programme includes plays, readings and concerts. Children who share the same name as the director of the performance get admitted free..',
#   capacity: 100,
#   price: 14,
#   location: 'Antwerpen',
#   start_date: Date.new(2023, 9, 5),
#   end_date: Date.new(2023, 9, 6),
#   user: User.last
# )

# if activity9
#   activity9.photo.attach(io: file, filename: "boat4.jpg", content_type: file.content_type)
#   puts "Activity created successfully!"
#   activity9.save
# else
#   puts "Failed to create! activity: #{activity9.errors.full_messages.join(', ')}"
# end

# Chatroom.create!(name: 'Chocolate Nation', activity: activity9)

file1 = URI.open("https://res.cloudinary.com/ddazjsjwx/image/upload/v1693318147/splish_splash_xrhfxl.jpg")
file2 = URI.open("https://res.cloudinary.com/ddazjsjwx/image/upload/v1693562783/splishsplash3_rwelop.jpg")
file3 = URI.open("https://res.cloudinary.com/ddazjsjwx/image/upload/v1693562783/splishsplash2_psks86.jpg")

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
  link: "https://www.playbeach.eu/",
  latitude: 51.03782653808594,
  longitude: 3.7670440673828125

)

if activity10
  activity10.photos.attach(io: file1, filename: "splish-splash.jpg", content_type: file1.content_type)
  activity10.photos.attach(io: file2, filename: "splish-splash.jpg", content_type: file2.content_type)
  activity10.photos.attach(io: file3, filename: "splish-splash.jpg", content_type: file3.content_type)


  puts "Activity created successfully!"
  activity10.save
else
  puts "Failed to create! activity: #{activity4.errors.full_messages.join(', ')}"
end

Chatroom.create!(name: 'Splish Splash', activity: activity10)
