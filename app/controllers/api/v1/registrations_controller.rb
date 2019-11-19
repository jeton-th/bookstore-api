# frozen_string_literal: true

module Api
  module V1
    # RegistrationsController
    class RegistrationsController < ApplicationController
      def create
        @user = User.new(user_params)

        if @user.save
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
