Rails.application.routes.draw do
  devise_for :users
  root "pages#home"

  resources :portfolios, except: [:show]
  get 'portfolio/:id' => 'portfolios#show', as: 'portfolio_show'
  get 'angular' => "portfolios#angular"

  resources :blogs do
    member do
      get :toggle_status
    end
  end

  get 'about-me' => 'pages#about'
  get 'contact' => 'pages#contact'


end
