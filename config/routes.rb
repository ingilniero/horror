Horror::Application.routes.draw do
  root 'home#index'

  get     '/auth/:provider/callback', to: 'sessions#create'
  post    '/auth/:provider/callback', to: 'sessions#create'
  delete  '/logout', to: 'sessions#destroy'

  resources :sessions, only: [:create, :destroy]
end
