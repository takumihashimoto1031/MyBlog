Rails.application.routes.draw do
  root 'messages#index'
  resources :malings
  resources :messages
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
