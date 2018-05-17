Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "pages#home"

  resources :portfolios
  resources :blogs

  get 'about-me' => 'pages#about'
  get 'contact' => 'pages#contact'


end
