Rails.application.routes.draw do
  devise_for :users

  root 'buildings#index'

  resources :buildings do
    resources :bathrooms do
      resources :critiques
    end
  end

end
