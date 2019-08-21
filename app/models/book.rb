# frozen_string_literal: true

# Book
class Book < ApplicationRecord
  validates :title, presence: true
  validates :author, presence: true
  validates :category, presence: true

  def self.paginate_results(page)
    Book.paginate(page: page, per_page: 10).order(id: :desc)
  end
end
