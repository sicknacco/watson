Rails.application.routes.draw do
  
  root 'landing#index'
  resources :order, only: [:new, :create]

  # get "up" => "rails/health#show", as: :rails_health_check
end
