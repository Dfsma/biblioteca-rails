Rails.application.routes.draw do
  
  
  devise_for :users


  resources :autors_libros
  resources :autors
  resources :idiomas_libros
  resources :libros
  resources :idiomas



  devise_scope :user do
      root 'devise/sessions#new'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
