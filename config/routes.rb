Rails.application.routes.draw do
  get 'stack/index'
  get 'pages/index'
  resources :idiomas_libros
  resources :libros
  resources :idiomas

  root "pages#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
