Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    devise_for :users, controllers: {
        sessions: 'devise/sessions',
        registrations: 'devise/registrations'
      }
    
      root "homes#top"
      get "about" => "homes#about"
      resources :users
      
    namespace :customers do
     get 'show' => 'users#show'
     get 'users/edit' => 'users#edit'
     patch 'update' => 'users#update'
     get 'unsubscribe' => 'users#unsubscribe'
     patch 'users/withdraw' => 'users#withdraw', as: 'users_withdraw'
     
    end
      
      
end
