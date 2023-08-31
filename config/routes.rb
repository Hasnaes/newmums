Rails.application.routes.draw do
  devise_for :users
  root to: "activities#index"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")

  resources :activities, only: [:index, :show] do
    resources :participations, only: [:create]
      end
  
  get "my_dashboard", to: "participations#my_dashboard"
  resources :participations, only: [:destroy]
  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end
end
