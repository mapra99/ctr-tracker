Rails.application.routes.draw do
  resources :games, only: %i[new create show index update index]

  root 'games#index'
end
