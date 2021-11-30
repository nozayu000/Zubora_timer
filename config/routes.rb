Rails.application.routes.draw do
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
     # customer側ルーティング
   devise_for :users, controllers: {
   sessions:      'users/sessions',
   passwords:     'users/passwords',
   registrations: 'users/registrations'
  }

  scope module: 'users' do
    root 'homes#top'
    get 'about' => 'homes#about'
   end

  namespace :users do
   get 'show' => 'users#show'
   get 'users/edit' => 'users#edit'
   patch 'update' => 'users#update'
   get 'unsubscribe' => 'users#unsubscribe'
   patch 'users/withdraw' => 'users#withdraw', as: 'users_withdraw'
  end

end
