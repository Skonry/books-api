Rails.application.routes.draw do

  post 'register', to: 'users#register'
  post 'authenticate', to: 'authentication#authenticate'
  
  get 'user-books', to: 'user_books#index'
  post 'user-books', to: 'user_books#addBook'
  delete 'user-books', to: 'user_books#removeBook'

  resources :shelves, except: [:new, :edit]
  resources :books, except: [:new, :edit]

end
