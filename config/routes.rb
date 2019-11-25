Rails.application.routes.draw do
  resources :games, only: %i[new create show index update index]
  resources :players, only: %i[index]

  root 'players#index'
end
