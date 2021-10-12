Rails.application.routes.draw do
  root "articles#index"

  # get "/articles", to: "articles#index"
  # get "/articles/:id", to: "articles#show"

  resources :articles # Loads default routes (run 'bin/rails routes' to see them)

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
