Rails.application.routes.draw do
  
  resources :properties do
    resources :facilities
    resources :reviews
    resources :bookings
    resources :bookmarks
  end



  devise_for :users
  get 'users/:id', to: 'users#show'
    
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root "properties#index"
end