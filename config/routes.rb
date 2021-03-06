Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/new'

  get 'static_pages/home'

  get '/help', to: 'static_pages#help'
  
   get  '/about',  to: 'static_pages#about'
   
   get  '/profile', to: 'static_pages#profile'
   
   get  '/signup',  to: 'users#new'
   
   get    '/login',   to: 'sessions#new'
  
   post   '/login',   to: 'sessions#create'
   
   delete '/logout',  to: 'sessions#destroy'
   
   resources :users
   resources :account_activations, only: [:edit]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    
    root 'static_pages#home'

end
