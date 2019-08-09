# frozen_string_literal: true

# seeding

categories = %w[
  Action
  Biography
  History
  Horror
  Kids
  Learning
  Sci-Fi
]

100.times do |_n|
  title = Faker::Book.title
  author = Faker::Book.author
  chapter = rand(1..20)

  Book.create!(
    title: title,
    author: author,
    category: categories[rand(categories.size)],
    chapter: chapter
  )
end
