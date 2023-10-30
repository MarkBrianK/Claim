# config/routes.rb

Rails.application.routes.draw do
  devise_for :user, controllers: {
    sessions: 'user/sessions',
    registrations: 'user/registrations', # Ensure 'registrations' points to your custom controller.
    confirmations: 'user/confirmations'
  }

  resources :users, defaults: { format: :json }
end
