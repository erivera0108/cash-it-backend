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

laptop = Item.create!(user: user1, category: 'Laptop', image: 'https://i.dell.com/sites/csimages/Video_Imagery/all/xps_7590_touch.png')


pc = Item.create!(user: user2, category: 'PC', image: 'https://images-na.ssl-images-amazon.com/images/I/81YUHsnzj1L._AC_SY355_.jpg')


switch = Item.create!(user: user3, category: 'Switch', image: 'https://www.nintendo.com/content/dam/noa/en_US/hardware/switch/nintendo-switch-new-package/gallery/bundle_color_console%20(3).jpg')


headphones = Item.create!(user: user2, category: 'HeadPhones', image: 'https://cnet1.cbsistatic.com/img/3LuDkui8AcAOIJ4X1mQ1kxlQbX0=/1200x675/2019/03/14/91ae7bfa-ccd8-4c7f-b451-76b1686c21f9/airpods-2-black.png')


headset = Item.create!(user: user3, category: 'Headset', image: 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MV8W2?wid=1144&hei=1144&fmt=jpeg&qlt=95&op_usm=0.5,0.5&.v=1559340831364')


hp = Item.create!(user: user3, category: 'HP', image: 'https://prodimage.images-bn.com/pimages/9780545162074_p0_v2_s550x406.jpg')

iphone = Item.create!(user: user2, category: 'Iphone', image: 'https://cdn.tmobile.com/content/dam/t-mobile/en-p/cell-phones/apple/Apple-iPhone-11-Pro/Midnight-Green/Apple-iPhone-11-Pro-Midnight-Green-frontimage.jpg')


35.times do
    Bid.create!(user: User.all.sample, item: Item.all.sample, offer: rand(0..10), accepted: false)
end