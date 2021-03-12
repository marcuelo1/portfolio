Rails.application.routes.draw do
  devise_for :admins
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'main#home'

  # Admin
  get 'admin', to: 'admin#index', as: 'home_admin'
  put 'update/about_me', to: 'admin#update_about_me'
  put 'update/contact_details', to: 'admin#update_contact_details'
  post 'add/skills_languages', to: 'admin#add_skills_languages'
  delete 'delete/skills/:skill', to: 'admin#delete_skill'
  delete 'delete/languages/:language', to: 'admin#delete_language'
end
