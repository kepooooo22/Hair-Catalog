Rails.application.routes.draw do
  devise_for :admins, controllers: {
    sessions: 'admin/sessions'
  }
  devise_for :customers, controllers: {
    sessions: 'customer/sessions',
    registrations: 'customer/registrations'
  }

  root 'pages#index'

  namespace :admin do
    root to: 'pages#index'
    resources :products, only: %i[index show new create edit update]
    resources :orders, only: %i[show update]
  end
  scope module: :customer do
    resources :products, only: %i[index show]
    resources :cart_items, only: %i[index create destroy] do
      member do
        patch 'increase'
        patch 'decrease'
      end
    end
    resources :checkouts, only: [:create]
    resources :webhooks, only: [:create]
    resources :orders, only: %i[index show] do
      collection do
        get 'success'
      end
    end
  end
end