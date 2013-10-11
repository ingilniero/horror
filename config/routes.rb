Horror::Application.routes.draw do
  root 'home#index'

  post '/auth/:provider/callback', to: 'sessions#create'
end
