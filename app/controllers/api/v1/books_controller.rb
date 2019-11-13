# frozen_string_literal: true

module Api
  module V1
    # BooksController
    class BooksController < ApplicationController
      include CurrentUserConcern

      def index
        @books = @current_user.books.paginate_results(params[:page])
      end

      def create
        @book = @current_user.books.build(book_params)
        if @book.save
          render :create
        else
          render :error
        end
      end

      def update
        @book = Book.find(params[:id])
        if @book.update_attributes(book_params)
          render :update
        else
          render :error
        end
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
