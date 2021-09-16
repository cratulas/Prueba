Rails.application.routes.draw do
  resources :booksmarks
  resources :types
  resources :categories

  root 'booksmarks#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
