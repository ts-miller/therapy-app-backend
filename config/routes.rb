Rails.application.routes.draw do
  resources :clients, only: [:index, :create, :destroy, :update]
  resources :appointments, only: [:index, :create, :destroy, :update]
end
