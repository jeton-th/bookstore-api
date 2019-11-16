# frozen_string_literal: true

if Rails.env == 'production'
  Rails.application.config.session_store :cookie_store, key: '_authentication_app', same_site: :strict, domain: 'https://rails-bookstore-api.herokuapp.com'
else
  Rails.application.config.session_store :cookie_store, key: '_authentication_app', same_site: :strict
end
