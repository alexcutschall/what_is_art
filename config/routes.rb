Rails.application.routes.draw do
  root to: 'welcome#index'
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  get '/gallery', to: 'gallery#index', as: 'gallery'
  get '/gallery/:id', to: 'gallery#show', as: 'next_gallery'
  get "/artwork/:id", to: 'artwork#show', as: 'artwork'
  get '/artworks/:id', to: 'artwork#index', as: 'artworks'
  get '/random-artwork', to: 'random_artwork#show', as: 'sample_artwork'
  get '/artist/:id', to: 'artists#show', as: 'artist'
  get '/artists/:id', to: 'artists#index', as: 'artists'
  get '/genes/:id', to: 'genes#index', as: 'genes'
  get '/:id/favorites', to: 'favorites#index', as: 'user_favorite'
  get '/quiz_of_the_day', to: 'quiz#show', as: 'quiz_of_the_day'

  resources :users

  namespace :api do
    namespace :v1 do
      namespace :users do
        resources :favorites
      end
    end
  end

end
