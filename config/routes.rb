Rails.application.routes.draw do


  root 'homes#index'
  get 'login' => 'sessions#new'
  get 'logout' => 'sessions#destroy'
  resources :sessions
  resources :homes
  resources :admins

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
