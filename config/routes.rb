Rails.application.routes.draw do
  resources :countries
  resources :aid_organizations
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
