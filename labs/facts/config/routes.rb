Rails.application.routes.draw do
  resources :facts
  resources :machines
  resources :datacenters
  resources :regions
  root to: 'pages#home'
end
