Rails.application.routes.draw do
  get 'timers/index'
  get 'timers/show'
  get 'calendars/index'
  get 'rankings/index'
  get 'rankings/show'
  get 'comments/index'
  get 'likes/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    devise_for :users, controllers: {
        sessions: 'devise/sessions',
        registrations: 'devise/registrations'
      }

      root "homes#index"
      get "about" => "homes#about"
      # post '/homes/guest_sign_in', to: 'homes#guest_sign_in'
      devise_scope :user do
        post 'users/guest_sign_in', to: 'users/sessions#new_guest'
      end
      resources :users do
       get 'unsubscribe' => 'users#unsubscribe'
       patch 'withdraw' => 'users#withdraw'
      end

end