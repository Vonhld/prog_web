Rails.application.routes.draw do
  root to: 'welcome#index'
  resources :chats
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :users, only: [:index, :show] 
  resources :messages do
    member do
      post :new
    end
  end
  get :home, to: 'home#index'
  get 'admin/users'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
