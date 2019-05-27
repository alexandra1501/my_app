Rails.application.routes.draw do

  resources :hotels
  resources :streets
  resources :cities
  resources :countries

  root 'hotels#index'

end
