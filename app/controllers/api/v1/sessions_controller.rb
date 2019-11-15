# frozen_string_literal: true

module Api
  module V1
    # SessionsController
    class SessionsController < ApplicationController
      include CurrentUserConcern

      def create
        @user = User
                .find_by(email: params['user']['email'])
                .try(:authenticate, params['user']['password'])

        if @user
          session[:user_id] = @user.id
          render :login
        else
          render :error
        end
      end

      def logged_in
        if @current_user
          render :logged_in
        else
          render :not_logged_in
        end
      end

      def logout
        reset_session
        render :logout
      end
    end
  end
end
