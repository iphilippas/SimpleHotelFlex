Simplehotelflex::Application.routes.draw do
  resources :reservations


  resources :room_rates


  resources :rooms do
    get "rooms/room_managment"
    get :available_rooms, on: :collection
  end


  resources :room_types


  resources :customers do
    get :reservation_modal, on: :collection
  end


  devise_for :users

  get "dashboard/index"
  
  root :to => 'dashboard#index'

  
end
