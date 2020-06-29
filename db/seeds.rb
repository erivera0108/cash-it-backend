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
Auction.destroy_all

print "Seeding"

15.times do 
    User.create!(name: Faker::Name.name, password_digest: 123, username: Faker::Internet.username)
end

10.times do
    Item.create!(user: User.all.sample, category: Faker::Appliance.equipment)
end

10.times do
    Auction.create!(item: Item.all.sample )
end

10.times do
    Bid.create!(user: User.all.sample, offer: rand(0..10), auction: Auction.all.sample)
end