Rails.application.routes.draw do
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'
  resources :microposts
  resources :users
  resources :languages
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'users#index'
end
