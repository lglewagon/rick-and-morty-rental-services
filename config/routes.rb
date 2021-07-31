Rails.application.routes.draw do
  get 'bookings/new'
  devise_for :users
  root to: 'characters#choose' #afficher la page avec les deux liens rick & morty


  resources :characters, only: [:index, :show] do
    resources :bookings, only: [ :new, :create]
  end

  resources :bookings, only: [ :show, :update]


  # resources :rating, only [:index, :show, :new, :create, :update] do
  # end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
