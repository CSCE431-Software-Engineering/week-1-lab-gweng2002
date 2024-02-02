Rails.application.routes.draw do
  root 'books#index'
  resources :books
  get 'books/index'
  get 'books/show'
  get 'books/new'
  get 'books/edit'
  get 'books/create'
  get 'books/update'
  get 'books/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
