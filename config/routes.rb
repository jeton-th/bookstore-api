# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :books
      resources :sessions, only: [:create]
      resources :registrations, only: [:create]
    end
  end
end
