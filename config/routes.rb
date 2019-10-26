Rails.application.routes.draw do
  resources :facts
  resources :zones
  resources :floors
  resources :multimedia
  resources :tags
  resources :descriptions
  resources :exhibits
  root 'pages#index', as: 'index'
end
