Rails.application.routes.draw do
  
  
  resources :autors_libros
  resources :autors
  resources :idiomas_libros
  resources :libros
  resources :idiomas

  root "libros#new"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
