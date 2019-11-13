# frozen_string_literal: true

# Book
class Book < ApplicationRecord
  belongs_to :user

  validates :title, presence: true, format: { with: /\AA.*\z/,
                                              message: 'must start with the capital letter A' }
  validates :author, presence: true
  validates :category, presence: true
  validates :chapter, numericality: { only_integer: true }

  def self.paginate_results(page)
    Book.paginate(page: page, per_page: 10).order(id: :desc)
  end
end
