# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(username: "sean123", email: "sean123@sean.com")
user2 = User.create(username: "khanitthakk", email: "kkraj@gmail.com")

note1 = Note.create(content: "wow", user_id: 1)
note2 = Note.create(content: "Monday", user_id: 2)