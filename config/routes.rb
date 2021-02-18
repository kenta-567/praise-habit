Rails.application.routes.draw do
  devise_for :users
  get 'calendars/show'
  get 'favorites/create'
  get 'favorites/destroy'
  get 'replies/new'
  get 'replies/create'
  get 'replies/show'
  get 'posts/index'
  get 'posts/new'
  get 'posts/create'
  get 'users/show'
  get 'users/edit'
  get 'users/update'
  get 'users/unsubscribe'
  get 'users/withdrawal'
  get 'contacts/index'
  get 'contacts/confirm'
  get 'contacts/thanks'
  get 'homes/top'
  get 'homes/about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
