Rails.application.routes.draw do
  root to: 'homes#index'
  get 'about' => 'homes#about'
  
end
