Rails.application.routes.draw do
  resources :multa
  resources :detalles
  resources :libros
  resources :prestamos
  resources :usuarios
  resources :get_users_lease
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'users/lease/:id', to: 'get_users_lease#getLease'
  # Defines the root path route ("/")
  root :to => 'get_users_lease#index'
end
