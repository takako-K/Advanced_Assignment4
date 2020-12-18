Rails.application.routes.draw do
  devise_for :users

  root to: 'homes#top'
  get 'home/about' => 'homes#about'
  post 'follow/:id' =>'relationships#follow', as: 'follow'
  post 'unfollow/:id' => 'relationships#unfollow', as: 'unfollow'
  get 'users/:id/show_follow' => 'users#show_follow', as: 'show_follow'
  get 'users/:id/show_follower' => 'users#show_follower', as: 'show_follower'

  resources :users
  resources :books

end
