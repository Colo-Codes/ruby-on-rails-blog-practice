Rails.application.routes.draw do
  root 'articles#index'

  # get "/articles", to: "articles#index"
  # get "/articles/:id", to: "articles#show"

  # resources :articles # Loads default routes (run 'bin/rails routes' to see them)

  # This creates comments as a nested resource within articles. This is another part of capturing the hierarchical relationship that exists between articles and comments.
  resources :articles do
    resources :comments
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
