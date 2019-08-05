# frozen_string_literal: true

# seeding
100.times do |_n|
  title = Faker::Book.title
  author = Faker::Book.author
  category = Faker::Book.genre
  Book.create!(
    title: title,
    author: author,
    category: category
  )
end
