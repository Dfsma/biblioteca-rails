Rails.application.routes.draw do
  resources :idiomas_libros
  resources :libros
  resources :idiomas
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
