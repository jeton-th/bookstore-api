# frozen_string_literal: true

module Api
  module V1
    # BooksController
    class BooksController < ApplicationController
      def index
        render json: Book.all.order(id: :asc)
      end

      def create
        book = Book.create(book_params)
        render json: book
      end

      def update
        book = Book.find(params[:id])
        render json: book if book.update(book_params)
      end

      def destroy
        Book.destroy(params[:id])
      end

      private

      def book_params
        params.permit(:title, :author, :category, :chapter, :progress)
      end
    end
  end
end
