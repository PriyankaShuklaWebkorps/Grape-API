# app/api/book_store/base.rb

module BookStore
  class Base < Grape::API
    version 'v1', using: :path

    # Require the Books file here to avoid uninitialized constant error
    require_relative 'v1/books'

    mount BookStore::V1::Books

    # Set the base path
    prefix 'api'

    # Other configurations...
  end
end
