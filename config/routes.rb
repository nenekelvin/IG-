Rails.application.routes.draw do
  resources :posts
  post '/likes/:post_id', to: 'posts#add_like', as: "add_likes"

  devise_for :users
  root 'posts#index'
end
