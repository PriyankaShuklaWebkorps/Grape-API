module BookStore
    module V1
      class Books < Grape::API
        version 'v1', using: :path
        format :json
        prefix :api
        resource :books do
          desc 'Return list of books'
          get do
            books = Book.all
            present books
          end
        end
      
        desc 'Create a new book'
        params do
          requires :isbn, type: Integer, desc: 'Book isbn'
          requires :stock, type: String, desc: 'Book stock'
        end
        post do
          Book.create(isbn: params[:isbn], stock: params[:stock])
        end

      end
    end
  end
