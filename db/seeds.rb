# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Seed some users
user = User.find_by(email: "vinhdtsmartboys@gmail.com")

if user.nil?
  user = User.create!(
    email: "vinhdtsmartboys@gmail",
    password: "123456a@",
  )
end

# Seed some matches

# Upcoming matches
(1..10).each do |i|
  Match.create!(
    opponent_name: "Opponent #{i}",
    start_at: Time.now + i.days,
    stadium_name: "Stadium #{i}",
    stadium_location: "Location #{i}",
    created_by: user,
  )
end

# Past matches
(1..10).each do |i|
  Match.create!(
    opponent_name: "Opponent #{i}",
    start_at: Time.now - i.days,
    stadium_name: "Stadium #{i}",
    stadium_location: "Location #{i}",
    created_by: user,
  )
end
