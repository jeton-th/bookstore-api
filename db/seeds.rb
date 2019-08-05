# frozen_string_literal: true

# seeding

categories = %w[
  Action
  Biography
  History
  Horror
  Kids
  Learning
  Sci-F
]

100.times do |_n|
  title = Faker::Book.title
  author = Faker::Book.author
  Book.create!(
    title: title,
    author: author,
    category: categories[rand(categories.size - 1)]
  )
end
