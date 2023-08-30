Rails.application.routes.draw do
  devise_for :users
  root to: "activities#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  resources :activities, only: [:index, :show]
  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end
  # root "articles#index"
end
