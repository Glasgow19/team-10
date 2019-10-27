Rails.application.routes.draw do
  resources :facts
  resources :zones
  resources :floors
  resources :multimedia
  resources :tags
  resources :descriptions
  resources :exhibits
  get 'floor_view/:id', to: 'pages#floor_view'
  root 'pages#index', as: 'index'
end
