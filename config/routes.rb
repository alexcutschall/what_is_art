Rails.application.routes.draw do
  root to: 'welcome#index'
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  get '/gallery', to: 'gallery#index', as: 'gallery'
  get "/artwork/:id", to: 'artwork#show', as: 'artwork'
  get '/random-artwork', to: 'random_artwork#show', as: 'sample_artwork'

  resources :users
end
