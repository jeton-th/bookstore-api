# frozen_string_literal: true

# ApplicationController
class ApplicationController < ActionController::API
  skip_before_action :verify_authenticity_token, raise: false
end
