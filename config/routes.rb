Rails.application.routes.draw do
  

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: 'pages#home'
  get '/bonjour(/:name)', to: 'pages#salut', as: 'salut'
  #get '/article', to: 'posts#index', as: 'posts'
  resources :posts 
  resources :categories 
end
