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
    resources :products, only: %i[index show new create edit update]
  end
  scope module: :customer do
    resources :products, only: %i[index show]
  end
end