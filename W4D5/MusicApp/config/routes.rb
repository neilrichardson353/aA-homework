Rails.application.routes.draw do
  get 'album/index'

  get 'album/create'

  get 'album/destroy'

  get 'album/edit'

  get 'album/new'

  get 'album/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :users, only: [:new, :index, :create, :show]

resource :session, only: [:create, :destroy, :new]

resources :band, only: [:show, :new, :create, :destroy, :index, :edit]

resources :album
end
