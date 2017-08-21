Rails.application.routes.draw do
  resources :hrestrictions
  resources :brestrictions
  resources :restrictions
  resources :lunches
  resources :payment_methods, path: 'payment-methods'
  resources :kids
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
