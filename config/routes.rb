Rails.application.routes.draw do
  root to: 'welcome#index'
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  get '/gallery', to: 'gallery#index', as: 'gallery'
  get "/artwork/:id", to: 'artwork#show', as: 'artwork'
  get '/artworks/:id', to: 'artwork#index', as: 'artworks'
  get '/random-artwork', to: 'random_artwork#show', as: 'sample_artwork'
  get '/artist/:id', to: 'artists#show', as: 'artist'
  get '/genes/:id', to: 'genes#index', as: 'genes'

  resources :users
end
