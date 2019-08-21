# frozen_string_literal: true

module Api
  module V1
    # BooksController
    class BooksController < ApplicationController
      def index
        @books = Book.paginate_results(params[:page])
      end

      def create
        @book = Book.create(book_params)
        render 'api/v1/books/create'
      end

      def update
        @book = Book.find(params[:id])
        render 'api/v1/books/update' if @book.update(book_params)
      end

      def destroy
        Book.destroy(params[:id])
      end

      private

      def book_params
        params.permit(:title, :author, :category, :chapter)
      end
    end
  end
end
