Rails.application.routes.draw do
  get 'home/index'
  root to: 'home#index'

  resources :caesar
  post 'caesar/decrypt', to: 'caesar#decrypt'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
