# frozen_string_literal: true

# ApplicationController
class ApplicationController < ActionController::API
  include ActionController::Cookies
  include ActionController::RequestForgeryProtection

  protect_from_forgery with: :exception

  skip_before_action :verify_authenticity_token, raise: false
end
