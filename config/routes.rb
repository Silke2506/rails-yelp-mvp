Rails.application.routes.draw do
  # get '/restaurants', to: 'restaurants#index' #a visitor can see the list of all restaurants
  # get '/restaurants/new', to: 'restaurants#new'

  # post '/restaurants', to: 'restaurants#create' #a visitor can add a new restaurant and be redirected

  # get '/restaurants/:id', to: 'restaurants#show' #a visitor can be redirected to the show view of that new restaurant

  resources :restaurants, only: [:index, :show] do
    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: [:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
