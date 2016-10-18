# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Space.destroy_all

user1 = User.create({name: "Zach Fong", email: "zach@gmail.com", password: "password"})
user2 = User.create({name: "Alicia Brown", email: "alicia@gmail.com", password: "password"})
user3 = User.create({name: "Andrew Vinocur", email: "andrew@gmail.com", password: "password"})
user4 = User.create({name: "Test Person", email: "test@gmail.com", password: "password"})
user5 = User.create({name: "Scott Whitman", email: "scott@gmail.com", password: "password"})
user6 = User.create({name: "Admin Person", email: "admin@gmail.com", password: "admin"})
user6.admin = true
user6.save

space1 = Space.create({user_id: 1, title: "General Assembly", price: 20, street_address: "225 Bush St", city: "San Francisco", state: "CA", zip_code: "94104", size: 20, available: true, photo: "http://l18airpark.com/l18_airpark_images/10%20x%2012.jpg", description: "Cool and well lit space in a closet"})
space2 = Space.create({user_id: 2, title: "AMC", price: 25, street_address: "1000 Van Ness Ave", city: "San Francisco", state: "CA", zip_code: "94109", size: 25, available: true, photo: "https://s3.amazonaws.com/static.carthrottle.com/workspace/uploads/posts/2016/01/bb342fad2f92b90fde5eafcd322ad3b0.jpg", description: "Great space in the back corner of a garage"})
space3 = Space.create({user_id: 3, title: "Golden Gate Park", price: 30, street_address: "501 Stanyan St", city: "San Francisco", state: "CA", zip_code: "94117", size: 30, available: true, photo: "http://l18airpark.com/l18_airpark_images/10%20x%2012.jpg", description: "Great space in my storage unit on Geary"})
space4 = Space.create({user_id: 4, title: "House near Geary Blvd", price: 50, street_address: "144 Cook St", city: "San Francisco", state: "CA", zip_code: "94118", size: 45, available: true, photo: "http://img.weburbanist.com/wp-content/uploads/2008/12/storagemontage7.jpg", description: "Custom built shelves in the side room of my home. You have access to all of the shelves seen in the picture."})
space5 = Space.create({user_id: 4, title: "House near Geary Blvd", price: 200, street_address: "144 Cook St", city: "San Francisco", state: "CA", zip_code: "94118", size: 200, available: true, photo: "http://www.corvetteforum.com/forums/photopost/direct_data/1103/medium/37017P1010008.jpg", description: "The left side of my garage is used as a workspace but you have access to the entire right side. The floors are sealed with epoxy and the garage door is weatherproofed."})
space6 = Space.create({user_id: 5, title: "Home in Daly City", price: 150, street_address: "84 Cobblestone Ct", city: "Daly City", state: "CA", zip_code: "94014", size: 100, available: true, photo: "http://blog.dcspub.com/media/2014/09/Small-Backyard-Sheds.jpg", description: "I have a small shed in my backyard. It is water proof and your stuff will be secured with a padlock. With 24 hour notice, I will unlock the padlock for you."})
space6 = Space.create({user_id: 5, title: "Spare Room Storage", price: 400, street_address: "229 24th Ave", city: "San Francisco", state: "CA", zip_code: "94121", size: 100, available: true, photo: "http://ukfilmlocation.com/Locations/WM1087/WM1087_29-800.jpg", description: "This is an unused room in my house. You are welcome to store anything that will not damage the wood floors. Access is ONLY permitted with at least 24 hours notice."})



p "Seeds have been updated"

# space1 = Space.create({user_id: "", })
#
#
# create_table "spaces", force: :cascade do |t|
#   t.integer  "user_id"
#   t.string   "title"
#   t.integer  "price"
#   t.string   "address"
#   t.integer  "size"
#   t.boolean  "available"
#   t.string   "photo"
#   t.string   "status"
#   t.string   "description"
#   t.datetime "created_at",  null: false
#   t.datetime "updated_at",  null: false
# end
