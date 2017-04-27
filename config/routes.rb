Rails.application.routes.draw do
  root 'restaurants#index'
  get 'restaurants/index', as: 'user_root'
    resources :restaurants do
      member do
        patch 'confirm'
      end
      collection do
        post 'confirm'
      end
    end

  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks'
  }
end
