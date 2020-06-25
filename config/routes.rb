Rails.application.routes.draw do
  resources :users, only: [:new, :create]
  resources :events

  root to: 'sessions#welcome'

  get 'login', to: 'sessions#new'

  post 'login', to: 'sessions#create'
  
  get 'welcome', to: 'sessions#welcome'

  get 'signup', to: 'users#new'

  get 'events', to: 'events#index'

  post 'signup', to: 'users#create'
  
  delete 'logout', to: 'sessions#destroy'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
