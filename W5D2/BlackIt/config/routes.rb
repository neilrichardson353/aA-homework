Rails.application.routes.draw do

  resources :posts
  resources :subs
  resource :session, only: [:create, :new, :destroy, :show]

  resource :users, only: [:create, :new, :edit, :destroy, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
