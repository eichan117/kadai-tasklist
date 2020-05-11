Rails.application.routes.draw do
  get 'newtasks/create'
  get 'newtasks/destroy'
    root to: 'tasks#index'
    resources :tasks
    
    get 'login', to: 'sessions#new'
    post 'login', to: 'sessions#create'
    delete 'logout', to: 'sessions#destroy'
    
    get 'signup',to: 'users#new'
    resources :users, only: [:index, :show, :create]
    
    resources :tasks,only: [:create,:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end