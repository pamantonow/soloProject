# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(username: "Alex", email: "alex@aol.com", password: "hello")


Track.create(name: "workout",unit: "miles", user_id: 1)

Entry.create(track_id: 1,date: DateTime.now(),note: "Ran less than yesterday", quantity: 30)