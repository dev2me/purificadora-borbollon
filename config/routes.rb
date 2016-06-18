Rails.application.routes.draw do
  devise_for :users

  resources :clients
  get 'clientes' => 'clients#index', as: "clientes"
  get 'nuevo/cliente' => 'clients#new', as: "nuevo_cliente"

  resources :orders
  get 'nuevo/pedido' => 'orders#new', as: "nuevo_pedido"

  resources :employees
  get 'empleados' => 'employees#index', as: "empleados"
  get 'nuevo/empleado' => 'employees#new', as: "nuevo_empleado"

  authenticated :user do
  	root 'welcome#index'
  end
  unauthenticated :user do
  	root 'welcome#unregistered'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
