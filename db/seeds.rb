# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


tanjiro = User.create!(name: 'tanjiro', email: 'tanjiro@gmail.com', password: 'mizunokokyu')
rengokusan = User.create!(name: 'rengokusan', email: 'rengokusan@gmail.com', password: 'hononokokyu')

5.times do
  tanjiro.articles.create!(
    content: Faker::Lorem.sentence(word_count: 5)
  )
end

5.times do
  rengokusan.articles.create!(
    content: Faker::Lorem.sentence(word_count: 5)
  )
end
