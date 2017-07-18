Rails.application.routes.draw do

  root to: "events#index"

  put '/events/:id', to: 'events#user_attending', as: :user_attending
  


  resources :events
  resources :clubs

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



  
end
