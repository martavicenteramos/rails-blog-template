Rails.application.routes.draw do
  devise_for :users
  root to: 'articles#index'
  resources :articles, only: [:index, :show, :alimentacao]

  get 'alimentacao', to: 'articles#alimentacao'
  get 'desporto', to: 'articles#desporto'

  get 'home', to: 'pages#home', as: :home

  namespace :admin do
    resources :articles
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
