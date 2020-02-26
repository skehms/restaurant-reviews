Rails.application.routes.draw do
  namespace :admin do
    get 'restaurants/index'
  end
  namespace :admin do
    resources :restaurants, only: [:index]
  end


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

  resources :reviews, only: [:destroy]
  # get '/restaurants/top', to: "restaurants#top", as: :top_restaurant
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
