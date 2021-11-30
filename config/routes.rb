Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    devise_for :users, controllers: {
        omniauth_callbacks: 'users/omniauth_callbacks',
        sessions: 'devise/sessions',
        registrations: 'devise/registrations'
      }


    root "homes#top"
    get "about" => "homes#about"
    get 'sessions/destroy'
    resources :users

end
