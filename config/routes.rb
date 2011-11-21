Air::Application.routes.draw do

  root :to => 'flights#index'
  
  resources :reservations
  resources :users
  resources :flights
  resources :airports

  get "sessions/new", :as => :login_page
  post "sessions/create"
  delete "sessions/destroy"


end
