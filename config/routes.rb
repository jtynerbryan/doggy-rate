Rails.application.routes.draw do
	  resources :pictures, only: [:new, :create, :index, :destroy]
	  resources :user_reviews
	  resources :dog_reviews
	  resources :dogs
	  resources :users
	  resources :sessions, only: [:create, :destroy]
	  get '/signin', to: 'sessions#signin'
		get '/users/burned-at-stake', to: 'users#burned_at_stake'
	  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
