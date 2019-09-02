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

i = 0
while i < 25
  title = Faker::Book.unique.title
  author = Faker::Book.author
  chapter = rand(1..20)

  next unless title[0] == 'A'

  i += 1
  Book.create!(
    title: title,
    author: author,
    category: categories[rand(categories.size)],
    chapter: chapter
  )
end
