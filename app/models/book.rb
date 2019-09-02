# frozen_string_literal: true

# Book
class Book < ApplicationRecord
  validates :title, presence: true, format: { with: /\AA.*\z/,
                                              message: 'must start with "A".' }
  validates :author, presence: true
  validates :category, presence: true
  validates :chapter, numericality: { only_integer: true }

  def self.paginate_results(page)
    Book.paginate(page: page, per_page: 10).order(id: :desc)
  end
end
