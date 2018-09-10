Rails.application.routes.draw do
  get 'comments/create'
  get 'comments/destroy'
  root to: 'homes#index'
  get 'posts/index'
  get 'posts/new'
  get 'posts/edit'
  get 'posts/show'
  devise_for :users
  get 'about' => 'homes#about'

  resources :posts do
    resources :comments, only: [:create, :destroy], shallow: true
  end
  
end
