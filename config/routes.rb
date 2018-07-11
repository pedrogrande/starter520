Rails.application.routes.draw do
  resources :canvas_items
  resources :canvas_item_types
  resources :canvasses
  get 'contact', to: 'pages#contact'
  get 'about', to: 'pages#about'
  get 'privacy', to: 'pages#privacy'
  get 'terms', to: 'pages#terms'
  root 'home#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
