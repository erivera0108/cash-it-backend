# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Item.destroy_all
Bid.destroy_all

print "Seeding"

user1 = User.create!(name: Faker::Name.name, password_digest: 123, username: Faker::Internet.username)
user1.image.attach(
    io: File.open('./public/images/users/user1.png'),
    filename: 'user1.png',
    content_type: 'application/png'
)

user2 = User.create!(name: Faker::Name.name, password_digest: 123, username: Faker::Internet.username)
user2.image.attach(
    io: File.open('./public/images/users/user2.png'),
    filename: 'user2.png',
    content_type: 'application/png'
)

user3 = User.create!(name: Faker::Name.name, password_digest: 123, username: Faker::Internet.username)
user3.image.attach(
    io: File.open('./public/images/users/user3.png'),
    filename: 'user3.png',
    content_type: 'application/png'
)

laptop = Item.create!(user: user1, category: 'Laptop')
laptop.image.attach(
    io: File.open('./public/images/items/Laptop.png'),
    filename: 'Laptop.png',
    content_type: 'application/png'
)

pc = Item.create!(user: user2, category: 'PC')
pc.image.attach(
    io: File.open('./public/images/items/PC.png'),
    filename: 'PC.png',
    content_type: 'application/png'
)

switch = Item.create!(user: user3, category: 'Switch')
switch.image.attach(
    io: File.open('./public/images/items/Switch.png'),
    filename: 'Switch.png',
    content_type: 'application/png'
)

headphones = Item.create!(user: user2, category: 'HeadPhones')
headphones.image.attach(
    io: File.open('./public/images/items/Headphones.png'),
    filename: 'Headphones.png',
    content_type: 'application/png'
)

headset = Item.create!(user: user3, category: 'Headset')
headset.image.attach(
    io: File.open('./public/images/items/Headset.png'),
    filename: 'Headset.png',
    content_type: 'application/png'
)

hp = Item.create!(user: user3, category: 'HP')
hp.image.attach(
    io: File.open('./public/images/items/HP.png'),
    filename: 'HP.png',
    content_type: 'application/png'
)
iphone = Item.create!(user: user2, category: 'Iphone')
iphone.image.attach(
    io: File.open('./public/images/items/Iphone.png'),
    filename: 'Iphone.png',
    content_type: 'application/png'
)

35.times do
    Bid.create!(user: User.all.sample, item: Item.all.sample, offer: rand(0..10), accepted: false)
end