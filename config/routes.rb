Rails.application.routes.draw do
 
 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    devise_for :users, controllers: {
        sessions: 'devise/sessions',
        registrations: 'devise/registrations',
        omniauth_callbacks: 'users/omniauth_callbacks'
        
      }
    
      root "homes#top"
      get "about" => "homes#about"
      get 'sessions/destroy'
      resources :users
end
