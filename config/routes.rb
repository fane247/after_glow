Rails.application.routes.draw do

  root to: "static#welcome"

  put '/events/:id', to: 'events#user_attending', as: :user_attending
  
  get "/users/:id/profile", to: 'users#profile', as: :user_profile

 

  resources :events
  resources :clubs

  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :conversations do
  	resources :messages
  end

  mount ActionCable.server => '/cable'
  

  
end


