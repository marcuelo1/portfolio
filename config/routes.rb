Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "web/pages#index"

  namespace :web, path: '' do
    resources :pages, only: [] do
      collection do
        
      end
    end
  end
end
