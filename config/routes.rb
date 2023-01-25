Rails.application.routes.draw do

    resources :properties do
      resources :facilities
    end

  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root "properties#index"
end

# get /users/sign_in - sign in from
# get /users/sign_up - sign up form