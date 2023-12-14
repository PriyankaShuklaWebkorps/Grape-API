Rails.application.routes.draw do
  # Adjusted require_relative path
  require_relative '../app/api/book_store/base'
  mount BookStore::Base => '/'
end
