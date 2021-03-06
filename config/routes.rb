Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
  }
  root to: 'homes#top'
  resources :posts, only: [:index, :new, :create]
  resources :replies, only: [:new, :show, :create]
  resources :favorites, only: [:create, :destroy]
  resources :users, only: [:edit, :update]
  resources :contacts, only: [:index]
  resources :calendars, only: [:show]

  get 'users/my_page' => 'users#show'
  get 'users/:id/unsubscribe' => 'users#unsubscribe', as: "users_unsubscribe"
  patch 'users/:id/withdrawal' => 'users#withdrawal', as: "users_withdrawal"

  post 'contacts/confirm' => 'contacts#confirm'
  post 'contacts/thanks' => 'contacts#thanks'

  get 'homes/about' => 'homes#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
