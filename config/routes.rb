Wazup::Application.routes.draw do
  root :to => 'dashboard#index'
  resources :projects, only: [:create, :show]
end
