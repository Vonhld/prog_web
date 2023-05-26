Rails.application.routes.draw do
  root to: 'welcome#index'
  resources :chats
  devise_for :users
  get :home, to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end