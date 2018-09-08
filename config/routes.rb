Rails.application.routes.draw do
  get 'posts/index'
  get 'posts/new'
  get 'posts/edit'
  get 'posts/show'
  devise_for :users
  root to: 'homes#index'
  get 'about' => 'homes#about'

  resources :posts do
    resources :comments, only: [:index, :new, :create,
                                :show, :destroy],
                        shallow: true
  end
  
end
