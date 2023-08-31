Rails.application.routes.draw do
  devise_for :users
  root to: "activities#index"

  resources :activities, only: [:index, :show] do
    resources :participations, only: [:create]
  end
  get "my_dashboard", to: "participations#my_dashboard"
  resources :participations, only: [:destroy]
end
