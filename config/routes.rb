Rails.application.routes.draw do
    devise_for :users, controllers: {
      sessions: 'users/sessions',
      registrations: 'users/registrations'
    }
  get '/u/:id', to: 'users#profile', as: 'user'

  resources :posts
  root 'pages#home'
  get 'about', to: 'pages#about'
  get 'post', to: 'posts#index'

 
end
