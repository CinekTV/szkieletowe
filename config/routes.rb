Rails.application.routes.draw do
  namespace :admin do
      resources :pomps
      resources :dane_useras
      resources :users

      root to: "pomps#index"
    end
  devise_for :users
  resources :dane_useras

  get 'home/user_tab' => "home/index", :as => :user_root
  get 'home/top'
  get 'home/index'
  get 'home/user_tab'
  root "home#index"
  get "/articles", to: "articles#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
