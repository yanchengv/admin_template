Rails.application.routes.draw do


  root 'homes#index'
  get 'login' => 'sessions#new'

  resources :sessions
  resources :homes

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
