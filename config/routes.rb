Rails.application.routes.draw do
  root to: 'welcome#index'
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  get '/gallery', to: 'gallery#index', as: 'gallery'

  resources :users
end
