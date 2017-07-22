Rails.application.routes.draw do
  get "authors" => 'authors#index'
  post 'authors' => 'authors#create'
  get 'author/new' => 'authors#new', as: :new_author
  get "author/:id" => 'authors#show', as: :author
  get "author/:id/edit" => 'authors#edit', as: :edit_author
  patch "author/:id" => "authors#update"
  delete "author/:id" => "authors#destroy"

  get  'books' => 'books#index'
  get  'books/new' => 'books#new', as: :new_book
  post 'books'     => 'books#create'
  get  'book/:id/edit' => 'books#edit', as: :edit_book

  patch "book/:id" => "books#update", as: :book
  delete "book/:id" => "book#destroy"


  root to: "home#index"



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
