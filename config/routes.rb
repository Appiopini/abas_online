Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :bank, only: [:index, :new, :create, :update, :show, :destroy]
  resources :account, only: [:index, :new, :create, :update, :show, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
