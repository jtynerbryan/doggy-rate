Rails.application.routes.draw do
  resources :user_reviews
  resources :dog_reviews
  resources :dogs
  resources :users
  resources :sessions, only: [:create, :destroy]
  get '/signin', to: 'sessions#signin'
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
