Rails.application.routes.draw do
  resources :user_critiques
  resources :dog_critiques
  resources :dogs
  resources :users
  resources :sessions, only: [:create, :destroy]
  get '/signin', to: 'sessions#signin'
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
