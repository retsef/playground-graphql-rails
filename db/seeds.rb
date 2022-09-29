# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Create 10 authors
40.times do
  Author.create(
    name: Faker::Name.name,
    bio: Faker::Lorem.paragraph(sentence_count: 2)
  )
end

# Create 10 groups
20.times do
  Group.create(
    name: Faker::Music.band,
    authors: Author.all.sample(rand(2..4))
  )
end

# Create 10 albums
120.times do
  Album.create(
    name: Faker::Music.album,
    released_at: Date.new(rand(1970..2021), rand(1..12)),
    composer: [Author, Group].sample.all.sample,
    tracks: rand(1..12).times.map { Track.new(name: Faker::Music::RockBand.song) }
  )
end
