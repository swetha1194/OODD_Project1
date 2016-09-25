Rails.application.routes.draw do
  resources :reservations
  resources :members
  resources :rooms
  resources :admins
  root "welcome#index"
  get    'signup'   => 'members#new'
  get    'login'    => 'sessions#new'
  post   'login'    => 'sessions#create'
  get    'logout'   => 'sessions#destroy'
  get    'book/:id' => 'reservations#new' , as: "book"
  post   'book' => 'reservations#create'
  get    'memhistory/:id'  =>  'reservations#memhistory', as: "memhistory"
  get    'schedule/:id'  =>  'reservations#schedule', as: "schedule"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
