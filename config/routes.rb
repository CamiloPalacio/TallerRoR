Rails.application.routes.draw do
  resources :multa
  resources :detalles
  resources :libros
  resources :prestamos
  resources :usuarios
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
