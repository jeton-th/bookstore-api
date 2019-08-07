# frozen_string_literal: true

# BooksController
class BooksController < ApplicationController
  def index
    render_all
  end

  def create
    Book.create(book_params)
    render_all
  end

  def update
    @book = Book.find(params[:id])
    render_all if @book.update(book_params)
  end

  def destroy
    Book.destroy(params[:id])
    render_all
  end

  def render_all
    render json: Book.all.order(id: :asc)
  end

  private

  def book_params
    params.permit(:title, :author, :category, :chapter, :progress)
  end
end
