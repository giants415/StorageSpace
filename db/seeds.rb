# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

user1 = User.create({name: "Zach Fong", email: "zach@gmail.com", password: "password"})
user2 = User.create({name: "Alicia Brown", email: "alicia@gmail.com", password: "password"})
user3 = User.create({name: "Andrew Vinocur", email: "andrew@gmail.com", password: "password"})
user4 = User.create({name: "Test Person", email: "test@gmail.com", password: "password"})
user5 = User.create({name: "Scott Whitman", email: "scott@gmail.com", password: "password"})
user6 = User.create({name: "Admin Person", email: "admin@gmail.com", password: "admin"})
user6.admin = true
user6.save

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
