Rails.application.routes.draw do
    resources :properties do
      resources :facilities
      resources :reviews
    end

  devise_for :users
  get 'users/:id', to: 'users#show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root "properties#index"
end

# get /users/sign_in - sign in from
# get /users/sign_up - sign up form