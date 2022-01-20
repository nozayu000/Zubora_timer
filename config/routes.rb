Rails.application.routes.draw do
  get 'relationships/followings'
  get 'relationships/followers'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: {
    sessions: 'devise/sessions',
    registrations: 'devise/registrations'
  }

  root "homes#index"
  get "about" => "homes#about", as: "about"

  # post '/homes/guest_sign_in', to: 'homes#guest_sign_in'
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end
  resources :user do
    get 'unsubscribe' => 'users#unsubscribe'
    patch 'withdraw' => 'users#withdraw'
  end
  resources :users do
    resource :relationships, only: [:create, :destroy]
    get 'followings' => 'relationships#followings', as: 'followings'
    get 'followers' => 'relationships#followers', as: 'followers'
  end


  resources :timers, only: [:index, :create]
  resources :posts, only: [:new, :create, :index, :show, :destroy] do
    resource :likes, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy]
  end
  resources :rankings
  # resources :likes
end