# frozen_string_literal: true

json.array! @books do |book|
  json.id book.id
  json.title book.title
  json.author book.author
  json.category book.category
  json.chapter book.chapter
end

json.array! [@books.total_pages]
