Rails.application.routes.draw do
  root to: 'homes#index'
  devise_for :users
  get 'about' => 'homes#about'

  #devise_forの後に記述する。user詳細ページとuser一覧ページの作成
  resources :users, only: [:index, :show]

  resources :posts do
    resources :comments, only: [:create, :destroy], shallow: true
  end
  
end
