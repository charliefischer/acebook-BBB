Rails.application.routes.draw do
  # get 'scratch_sessions/new'
  resources :usertwo
  resources :sessions, only: [:create]


  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :posts

  root to: "posts#index"
end
