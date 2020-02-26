Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'
  resources :restaurants do
    collection do
      get 'top'
    end
  #'restaurants/top'
    member do
      get 'chef'
    end
  #'restaurants/:id/chef'
  resources :reviews, only: [:new, :create]
  end
  # get '/restaurants/top', to: "restaurants#top", as: :top_restaurant
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
