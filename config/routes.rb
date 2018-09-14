Rails.application.routes.draw do
  root to: 'homes#index'
  devise_for :users
  get 'about' => 'homes#about'

  resources :users, only: [:index, :show]

  resources :posts do
    resources :comments, only: [:create, :destroy], shallow: true
  end
  
end
