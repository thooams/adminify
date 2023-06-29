# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users # ,  controllers: { invitations: 'users/invitations' } # , skip: [:registrations]
  resources :users
  resource :pages
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  root 'pages#index'
end
