Rails.application.routes.draw do
  devise_for :users
  root to: "posts#index"
  resources :posts, only: [:index, :new, :create]
  get '/posts/feeling/:id', to: "posts#feeling"
  get '/posts/color/:id', to: "posts#color"
end
