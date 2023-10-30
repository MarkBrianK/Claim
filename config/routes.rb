# config/routes.rb

Rails.application.routes.draw do
  devise_for :user, controllers: {
    sessions: 'user/sessions',
    registrations: 'user/registrations',
    confirmations: 'user/confirmations'

  }
  resources :users, defaults: { format: :json }
end
