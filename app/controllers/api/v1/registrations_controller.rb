# frozen_string_literal: true

module Api
  module V1
    # RegistrationsController
    class RegistrationsController < ApplicationController
      def create
        @user = User.create!(user_params)

        if @user
          session[:user_id] = @user.id
          render :registered
        else
          render :not_registered
        end
      end

      private

      def user_params
        params.require(:user).permit(:email, :password, :password_confirmation)
      end
    end
  end
end
