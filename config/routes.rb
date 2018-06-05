Rails.application.routes.draw do
  devise_for :users, path: '', path_names: {sign_in: "login", sign_out: "logout", sign_up: 'register'}
  root "pages#home"

  resources :portfolios, except: [:show] do
    put :sort,on: :collection
  end
  get 'portfolio/:id' => 'portfolios#show', as: 'portfolio_show'
  get 'angular' => "portfolios#angular"

  resources :blogs do
    member do
      get :toggle_status
    end
  end

  get 'about-me' => 'pages#about'
  get 'contact' => 'pages#contact'
  get 'tech-news' => 'pages#tech_news'


end
