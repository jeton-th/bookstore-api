# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api, defaults: { format: :json }, path: '/' do
    resources :books
  end
end
