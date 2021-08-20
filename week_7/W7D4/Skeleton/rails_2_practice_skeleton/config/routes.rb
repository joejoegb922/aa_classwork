Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resource :session, only: [:create, :destroy, :new]
  resources :users, only: [:index, :show, :create, :new] do
    resources :goals, only: [:create]
  end
  resources :goals, only: [:destroy]
end
