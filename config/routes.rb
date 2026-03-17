Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  namespace :api do
    get "health", to: "health#show"

    resource :profile, only: %i[show]
    resources :projects, only: %i[index show]
    resources :articles, only: %i[index show]
    resources :skills, only: %i[index show]
  end
end
