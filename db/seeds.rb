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


News.destroy_all
puts "news destroyed"


# Users

user1 = User.create!(
  first_name: 'michael',
  last_name: 'rodriguez',
  email: 'michael@test.com',
  username: 'michael',
  password: '123456'
)
puts "success"

user2 = User.create!(
  first_name: 'lisa',
  last_name: 'vanpraat',
  email: 'lisa@test.com',
  username: 'lisa',
  password: '123456'
)
puts "success"

file_avatar = URI.open("https://www.cbc.ca/mediacentre/content/images/Catherine2016-thumb.jpg")

user3 = User.create!(
  first_name: 'rohma',
  last_name: 'rohma',
  email: 'rohma@test.com',
  username: 'rohma',
  password: '123456'
)

if user3
  user3.avatar.attach(io: file_avatar, filename: "avatarmum.jpeg", content_type: file_avatar.content_type)
  puts "User picture created!"
  user3.save
else
  puts "Failed to create! user: #{user3.errors.full_messages.join(', ')}"
end
puts "success"

user4 = User.create!(
  first_name: 'leo',
  last_name: 'thompson',
  email: 'leo@test.com',
  username: 'leo',
  password: '123456'
)
puts "success"

file_avatar5 = URI.open("https://as2.ftcdn.net/v2/jpg/04/46/43/55/1000_F_446435523_ph2cTXwzQ9Gf2lfzTRbj9JTfMjjeTH4N.jpg")

user5 = User.create!(
  first_name: 'hasnae',
  last_name: 'hasnae',
  email: 'hasnae@test.com',
  username: 'hasnae',
  password: '123456'
)

if user5
  user5.avatar.attach(io: file_avatar5, filename: "avatarmum.jpeg", content_type: file_avatar5.content_type)
  puts "User picture created!"
  user5.save
else
  puts "Failed to create! user: #{user5.errors.full_messages.join(', ')}"
end
puts "success"

 #Brussels Activities
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
  end_date: Date.new(2023, 9, 30),
  category: 'indoor',
  link: "https://babytheeknekkersdal.myturn.com/library/",
  latitude: 50.87343215942383,
  longitude: 4.347685813903809
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
  end_date: Date.new(2023, 9, 30),
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
  end_date: Date.new(2023, 9, 30),
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

kominichat = Chatroom.create!(name: 'Komini Waterloo', activity: activity3)



#Antwerpen


file1 = URI.open("https://res.cloudinary.com/ddazjsjwx/image/upload/v1693317442/Plopsa_Station_sh2x1v.jpg")
file2 = URI.open("https://res.cloudinary.com/ddazjsjwx/image/upload/v1693561414/plospa-station3_ibsrrc.jpg")
file3 = URI.open("https://res.cloudinary.com/ddazjsjwx/image/upload/v1693561415/Plopsa-Station2_jzmuuw.jpg")


activity4 = Activity.create!(
  name: 'Plopsa Station',
  description: 'Plopsa is the theme park division of Studio 100, the company operates 8 parks across Belgium, The Netherlands, Germany and Poland. Gert Verhulst as Gert in Plopsaland.',
  capacity: 75,
  address: "Mediaplein, 2018 Antwerpen",
  price: 20,
  location: 'Antwerpen',
  start_date: Date.new(2023, 9, 9),
  end_date: Date.new(2023, 9, 30),
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
file3 = URI.open("https://res.cloudinary.com/ddazjsjwx/image/upload/v1693561411/chocolatenation4_vv04d9.jpg")

activity5 = Activity.create!(
  name: 'Chocolate Nation',
  description: 'Take a magical chocolate trip this summer where you will brave wild waves, get to taste velvety Belgian chocolate and feel like Sjakie in de chocoladefabriek. That is guaranteed to make the sun shine on your face. Book your ticket quickly. You will find us opposite Antwerp Central Station on Astridplein. We are open every day.',
  capacity: 30,
  address: "Koningin Astridplein 7, 2018 Antwerpen",
  price: 14,
  location: 'Antwerpen',
  start_date: Date.new(2023, 9, 9),
  end_date: Date.new(2023, 9, 30),
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
  capacity: 85,
  address: "Koningin Astridplein 20-26, 2018 Antwerpen",
  price: 26,
  location: 'Antwerpen',
  start_date: Date.new(2023, 9, 9),
  end_date: Date.new(2023, 9, 30),
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
  capacity: 45,
  address: "Hurstweg 8 Galveston, 9000 Gent",
  price: 10,
  location: 'Gent',
  start_date: Date.new(2023, 9, 6),
  end_date: Date.new(2023, 9, 30),
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

pretlandchat = Chatroom.create!(name: 'Pretland Gent', activity: activity7)

file1 = URI.open("https://res.cloudinary.com/ddazjsjwx/image/upload/v1693317902/blaarmeersen_hbgpaa.jpg")
file2 = URI.open("https://res.cloudinary.com/ddazjsjwx/image/upload/v1693562244/blasmeeran3_qsaevl.jpg")
file3 = URI.open("https://res.cloudinary.com/ddazjsjwx/image/upload/v1693562244/blaarmeersen3_pbmrct.jpg")

activity8 = Activity.create!(
  name: 'Blaarmeersen',
  description: 'Blaarmeersen Sports and Recreation Park is a green jewel beside the Watersportbaan in Ghent. This is where Ghent residents come jogging, and rowing clubs battle it out on the water. The Watersportbaan in Ghent is also the setting for many festivals and activities for people of all ages.',
  capacity: 60,
  address: "Strandlaan 24, 9000 Gent",
  price: 0,
  location: 'Gent',
  start_date: Date.new(2023, 9, 9),
  end_date: Date.new(2023, 9, 30),
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



# playbeach

file1 = URI.open("https://res.cloudinary.com/ddazjsjwx/image/upload/v1693318147/splish_splash_xrhfxl.jpg")
file2 = URI.open("https://res.cloudinary.com/ddazjsjwx/image/upload/v1693562783/splishsplash3_rwelop.jpg")
file3 = URI.open("https://res.cloudinary.com/ddazjsjwx/image/upload/v1693562783/splishsplash2_psks86.jpg")

activity10 = Activity.create!(
  name: 'Play Beach',
  description: 'Whether you like water adventures, relaxing in a wellness pool or keeping yourself in shape by swimming laps: Ghent offers a lot of possibilities to go swimming, both indoors and outdoors. Come on, let’s dive in!.',
  capacity: 80,
  address: "Driebeekstraat 21, 9050 Gent",
  price: 14,
  location: 'Gent',
  start_date: Date.new(2023, 9, 9),
  end_date: Date.new(2023, 9, 30),
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




# participations

#-----------Pretland Gent--------------#

participation1 = Participation.new(
  participation_date: Date.new(2023, 9, 7)
)
participation1.activity = activity7
participation1.user = user1
participation1.save!

participation2 = Participation.new(
  participation_date: Date.new(2023, 9, 7)
)
participation2.activity = activity7
participation2.user = user2
participation2.save!


participation3 = Participation.new(
  participation_date: Date.new(2023, 9, 7)
)
participation3.activity = activity7
participation3.user = user3
participation3.save!

puts "Participations created Pretland successfully!"
#-------------------------------------#

participation4 = Participation.new(
  participation_date: Date.new(2023, 9, 15)
)
participation4.activity = activity1
participation4.user = user1
participation4.save!


participation5 = Participation.new(
  participation_date: Date.new(2023, 9, 15)
)
participation5.activity = activity1
participation5.user = user2
participation5.save!


participation6 = Participation.new(
  participation_date: Date.new(2023, 9, 17)
)
participation6.activity = activity1
participation6.user = user3
participation6.save!

puts "Participations created Babyleek successfully!"

#-------------Komini Partcipations---------------#

participation7 = Participation.new(
  participation_date: Date.new(2023, 9, 18)
)
participation7.activity = activity3
participation7.user = user2
participation7.save!


participation8 = Participation.new(
  participation_date: Date.new(2023, 9, 18)
)
participation8.activity = activity3
participation8.user = user1
participation8.save!

puts "Participations created Babyleek successfully!"


#-------------Komini Chat Messages---------------#

message1 = Message.new(
  content: "Hey Mums, I will be arriving at 1pm, hope to see you there"
)

message1.chatroom = kominichat
message1.user = user5
message1.save!


message2 = Message.new(
  content: "Awesome Hasnae - See you there "
)

message2.chatroom = kominichat
message2.user = user2
message2.save!

message3 = Message.new(
  content: "Nice to connect Lisa - I am actually leaving from Gare Central Brussels if you want to carpool"
)

message3.chatroom = kominichat
message3.user = user5
message3.save!


message4 = Message.new(
  content: "Great thanks Hasnae - look forward to it"
)

message4.chatroom = kominichat
message4.user = user2
message4.save!



#-------------Pretland Chat Messages---------------#




message5 = Message.new(
  content: "Benny loved meet all of you! "
)

message5.chatroom = pretlandchat
message5.user = user5
message5.save!

message6 = Message.new(
  content: "Wow I was so impressed by the safety of this facility"
)

message6.chatroom = pretlandchat
message6.user = user4
message6.save!


message7 = Message.new(
  content: "Was great to meet you guy ! look forward to catching up soon"
)
message7.chatroom = pretlandchat
message7.user = user2
message7.save!




#--------------News seeds--------------------------

newspic1 = URI.open("https://res.cloudinary.com/ddazjsjwx/image/upload/v1694078056/news1new_w8gtdt.jpg")

news1 = News.create!(
  title: "Feeding your newborn: Tips for new parents",
  theme: 'Feeding',
  author: 'Mayo Clinic Staff',
  date: Date.new(2023, 1, 3),
  link: 'https://www.mayoclinic.org/healthy-lifestyle/infant-and-toddler-health/in-depth/healthy-baby/art-20047741',
  description: "Feeding a newborn is a round-the-clock commitment. It's also an opportunity to begin forming a bond with the newest member of your family. Those late-night feedings, while exhausting, can be some of the most intimate moments you share with your baby. As you cradle them in your arms and nourish them with love and sustenance, you're not just providing essential nutrients; you're also establishing a deep connection that will grow stronger with each passing day."
)


if news1
  news1.photo.attach(io: newspic1, filename: "news1.jpg", content_type: newspic1.content_type)

  puts "News Article with Image created!"
  news1.save!

end
#--------------News 2--------------------------

newspic2 = URI.open("https://res.cloudinary.com/ddazjsjwx/image/upload/v1694079452/Screenshot_2023-09-07_at_11.32.42_am_h0xybk.jpg")


news2 = News.create!(
  title: "Feeding your newborn: Tips for new parents",
  theme: 'Feeding',
  author: 'Mayo Clinic Staff',
  date: Date.new(2023, 1, 3),
  link: '',
  description: "xxxxxxxxx"
)



if news2
  news2.photo.attach(io: newspic2, filename: "news2.jpg", content_type: newspic2.content_type)

  puts "News Article with Image created!"
  news2.save!
end

#--------------News 3--------------------------
newspic3 = URI.open("https://res.cloudinary.com/ddazjsjwx/image/upload/v1694079385/baby_product_2_iyrprl.jpg")

news3 = News.create!(
  title: "Feeding your newborn: Tips for new parents",
  theme: 'Feeding',
  author: 'Mayo Clinic Staff',
  date: Date.new(2023, 1, 3),
  link: '',
  description: "xxxxxxxxx"
)


if news3
  news3.photo.attach(io: newspic3, filename: "news3.jpg", content_type: newspic3.content_type)

  puts "News Article with Image created!"
  news3.save!
end

#--------------News 4--------------------------
newspic4 = URI.open("https://res.cloudinary.com/ddazjsjwx/image/upload/v1694079385/baby_product_2_iyrprl.jpg")

news4 = News.create!(
  title: "Feeding your newborn: Tips for new parents",
  theme: 'Feeding',
  author: 'Mayo Clinic Staff',
  date: Date.new(2023, 1, 3),
  link: '',
  description: "xxxxxxxxx"
)


if news4
  news4.photo.attach(io: newspic4, filename: "news4.jpg", content_type: newspic4.content_type)

  puts "News Article with Image created!"
  news4.save!
end


#--------------News 5--------------------------

newspic5 = URI.open("https://res.cloudinary.com/ddazjsjwx/image/upload/v1694079385/baby_product_2_iyrprl.jpg")

news5 = News.create!(
  title: "Feeding your newborn: Tips for new parents",
  theme: 'Feeding',
  author: 'Mayo Clinic Staff',
  date: Date.new(2023, 1, 3),
  link: '',
  description: "xxxxxxxxx"
)


if news5
  news5.photo.attach(io: newspic5, filename: "news5.jpg", content_type: newspic5.content_type)

  puts "News Article with Image created!"
  news5.save!

end

#--------------News 6--------------------------

newspic6 = URI.open("https://res.cloudinary.com/ddazjsjwx/image/upload/v1694079385/baby_product_2_iyrprl.jpg")

news6 = News.create!(
  title: "Feeding your newborn: Tips for new parents",
  theme: 'Feeding',
  author: 'xxxxxxxxxxx',
  date: Date.new(2023, 1, 3),
  link: '',
  description: "xxxxxxxxx"
)



if news6
  news6.photo.attach(io: newspic6, filename: "news6.jpg", content_type: newspic6.content_type)

  puts "News Article with Image created!"
  news6.save!

end
#--------------News 7--------------------------

newspic7 = URI.open("https://res.cloudinary.com/ddazjsjwx/image/upload/v1694079385/baby_product_2_iyrprl.jpg")


news7 = News.create!(
  title: "Feeding your newborn: Tips for new parents",
  theme: 'Feeding',
  author: 'Mayo Clinic Staff',
  date: Date.new(2023, 1, 3),
  link: '',
  description: "xxxxxxxxx"
)


if news7
  news7.photo.attach(io: newspic7, filename: "news7.jpg", content_type: newspic7.content_type)

  puts "News Article with Image created!"
  news7.save!

end
#--------------News 8--------------------------

newspic8 = URI.open("https://res.cloudinary.com/ddazjsjwx/image/upload/v1694079385/baby_product_2_iyrprl.jpg")

news8 = News.create!(
  title: "Feeding your newborn: Tips for new parents",
  theme: 'Feeding',
  author: 'Mayo Clinic Staff',
  date: Date.new(2023, 1, 3),
  link: '',
  description: "xxxxxxxxx"
)


if news8
  news8.photo.attach(io: newspic8, filename: "news8.jpg", content_type: newspic8.content_type)

  puts "News Article with Image created!"
  news8.save!
end

#--------------News 9--------------------------

newspic9 = URI.open("https://res.cloudinary.com/ddazjsjwx/image/upload/v1694079385/baby_product_2_iyrprl.jpg")

news9 = News.create!(
  title: "Feeding your newborn: Tips for new parents",
  theme: 'Feeding',
  author: 'Mayo Clinic Staff',
  date: Date.new(2023, 1, 3),
  link: '',
  description: "xxxxxxxxx"
)


if news9
  news9.photo.attach(io: newspic9, filename: "news9.jpg", content_type: newspic9.content_type)

  puts "News Article with Image created!"
  news9.save!
end
