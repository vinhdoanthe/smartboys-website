# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Seed some users
# user = User.find_by(email: "vinhdtsmartboys@gmail.com")

if User.all.blank?
  user = User.create!(
    email: "vinhdtsmartboys@gmail.com",
    password: "123456a@",
  )
else
  user = User.first
end

# Seed some matches

# Upcoming matches
(1..10).each do |i|
  m=Match.create!(
    opponent_name: "Opponent #{i}",
    # opponent_logo: File.open(Rails.root.join("app/assets/images/sample-logo.jpeg")),
    start_at: Time.now + i.days,
    stadium_name: "Stadium #{i}",
    stadium_location: "Location #{i}",
    created_by: user,
    # banner: File.open(Rails.root.join("app/assets/images/match-detail-cover.jpeg")),
    content: "<p>#{Faker::Lorem.paragraphs(number: 10).join('</p><p>')}</p>",
  )
  m.opponent_logo.attach(io: File.open(Rails.root.join("app/assets/images/sample-logo.jpeg")), filename: "sample-logo.jpeg")
  m.banner.attach(io: File.open(Rails.root.join("app/assets/images/match-detail-cover.jpeg")), filename: "match-detail-cover.jpeg")
end

# Past matches
(1..10).each do |i|
  m=Match.create!(
    opponent_name: "Opponent #{i}",
    start_at: Time.now - i.days,
    stadium_name: "Stadium #{i}",
    stadium_location: "Location #{i}",
    created_by: user,
    content: "<p>#{Faker::Lorem.paragraphs(number: 10).join('</p><p>')}</p>",
  )
  m.opponent_logo.attach(io: File.open(Rails.root.join("app/assets/images/sample-logo.jpeg")), filename: "sample-logo.jpeg")
  m.banner.attach(io: File.open(Rails.root.join("app/assets/images/match-detail-cover.jpeg")), filename: "match-detail-cover.jpeg")
end

# Sponsors
(1..10).each do |i|
  s=Sponsor.create!(
    name: "Sponsor #{i}",
    website: Faker::Internet.url,
    # logo: File.open(Rails.root.join("app/assets/images/sample-logo.jpeg")),
   )
   s.logo.attach(io: File.open(Rails.root.join("app/assets/images/sample-logo.jpeg")), filename: "sample-logo.jpeg")
end
