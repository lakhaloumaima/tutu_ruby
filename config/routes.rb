Rails.application.routes.draw do
  devise_scope :user do
    # Redirests signing out users back to sign-in
    get "users", to: "devise/sessions#new"
  end
  
  devise_for :users
  
  #devise_for :users, match: '', path: '',
  #controllers: {
  #  sessions: 'user/sessions',
  #  registrations: 'user/registrations',
  #  passwords: 'user/passwords',
  #  omniauth_callbacks: 'user/omniauth_callbacks'
  #},
  #path_names: { sign_up: 'register', sign_in: 'login', sign_out: 'user/logout' } 


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: 'pages#home'
  get '/bonjour(/:name)', to: 'pages#salut', as: 'salut'
  #get '/article', to: 'posts#index', as: 'posts'
  resources :posts 
  resources :categories 
end
