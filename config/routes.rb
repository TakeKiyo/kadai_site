Rails.application.routes.draw do
  get '/shop',  to: 'products#shop'
  resources :products do
  end
  root 'products#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
