Rails.application.routes.draw do
  resources :messages
  resources :poll_sites
  resources :channels
  resources :users
  post '/login', to: 'auth#login'
  post '/signup', to: 'users#create'

  resources :poll_sites do
    resources :messages 
  end 

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
