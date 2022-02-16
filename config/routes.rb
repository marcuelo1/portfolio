Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "web/pages#index"

  namespace :web, path: '' do
    resources :inquiries, only: [:create]
  end
end
