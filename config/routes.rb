Rails.application.routes.draw do
#   # get 'reviews/new'
#   # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

#   # Defines the root path route ("/")
#   # root "articles#index"

  # get 'restaurants', to: 'restaurants#index'

  # get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant

  # get 'restaurants/:id', to: 'restaurants#show', as: :restaurant

  # post 'restaurants', to: 'restaurants#create'

  # get 'restaurants/:restaurant_id/reviews/new', to: 'reviews#new'
  # post 'restaurants/:restaurant_id/reviews/new', to: 'restaurants#create'

  resources :restaurants, only: [:index, :new, :show, :create] do
    resources :reviews, only: [ :new, :create ]
  end

end
