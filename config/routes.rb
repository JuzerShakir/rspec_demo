Rails.application.routes.draw do
  get 'home/index'
  get 'about', to: 'home#about'
end
