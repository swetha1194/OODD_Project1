Rails.application.routes.draw do
  resources :members
  resources :rooms
  resources :admins
  root "welcome#index"
  get    'signup'   => 'members#new'
  get    'login'    => 'sessions#new'
  post   'login'    => 'sessions#create'
  get    'logout'   => 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
