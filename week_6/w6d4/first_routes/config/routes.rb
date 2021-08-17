Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [:index, :show, :create, :destroy, :update]

  resources :artworks

  resources :artwork_shares, only: [:create, :destroy]
end
