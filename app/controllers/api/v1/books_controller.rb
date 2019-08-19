# frozen_string_literal: true

module Api
  module V1
    # BooksController
    class BooksController < ApplicationController
      def index
        @books = Book.paginate(page: params[:page], per_page: 10).order(id: :asc)
      end

      def create
        @book = Book.create(book_params)
      end

      def update
        @book = Book.find(params[:id])
        @book if @book.update(book_params)
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
