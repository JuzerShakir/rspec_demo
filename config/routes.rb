Rails.application.routes.draw do
  root to: 'home#index'
  get 'about', to: 'home#about'

  post 'create', to: 'smartphone#create'
  get 'new', to: 'smartphone#new'
end
