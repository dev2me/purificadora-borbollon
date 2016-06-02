Rails.application.routes.draw do
  devise_for :users
  
  resources :clients
  get 'clientes' => 'clients#index', as: "clientes"

  resources :orders
  get 'pedidos' => 'orders#index', as: "pedidos"

  resources :employees
  get 'empleados' => 'employees#index', as: "empleados"

  authenticated :user do
  	root 'welcome#index'
  end
  unauthenticated :user do
  	root 'welcome#unregistered'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
