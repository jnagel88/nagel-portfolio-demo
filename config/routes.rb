Rails.application.routes.draw do
  resources :topics, only: [:index, :show]

  # resources :comments
  devise_for :users, path: '', path_names: {sign_in: "login", sign_out: "logout", sign_up: 'register'}

  resources :portfolios, except: [:show] do
    put :sort,on: :collection
  end

  get 'portfolio/:id' => 'portfolios#show', as: 'portfolio_show'
  get 'about-me' => 'pages#about'
  get 'contact' => 'pages#contact'
  get 'tech-news' => 'pages#tech_news'

  resources :blogs do
    member do
      get :toggle_status
    end
  end

  mount ActionCable.server => '/cable'

  root "pages#home"
end
