Rails.application.routes.draw do

  root 'hotels#index'

  resources :hotels do
    resources :comments
  end
  resources :streets
  resources :cities
  resources :countries

end
