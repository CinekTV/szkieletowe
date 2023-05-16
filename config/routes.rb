Rails.application.routes.draw do
  devise_for :users
  resources :dane_useras
  get 'home/top'
  get 'home/index'
  get 'home/user_tab'
  root "home#index"
  get "/articles", to: "articles#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
