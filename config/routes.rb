Rails.application.routes.draw do
  devise_for :users

  root to: 'homes#top'
  get 'home/about' => 'homes#about'
  post 'follow/:id' =>'relationships#follow', as: 'follow'
  post 'unfollow/:id' => 'relationships#unfollow', as: 'unfollow'
  # get 'users/:id/show_follow' => 'users#show_follow', as: 'user_show_follow'
  # get 'users/:id/show_follower' => 'users#show_follower', as: 'user_show_follower'

  resources :users do
    member do
      get :show_follow
      get :show_follower
    end
  end
  resources :books

end
