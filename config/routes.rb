Rails.application.routes.draw do
  # resources :drivers, :passengers, :trips
  root to: 'homepages#index'
  # get 'trips/request/:passenger_id', to: 'trips#request_trip', as: 'request_trip'
  resources :trips, except: [:new]
  resources :drivers
  resources :passengers do
    resources :trips, only: [:new]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
