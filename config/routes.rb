Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # CREATE
  get 'articles/new', to: 'articles#new', as: 'new_article'
  post 'articles', to: 'articles#create'
  # READ ALL
  get 'articles', to: 'articles#index'
  # READ ONE
  get 'articles/:id', to: 'articles#show', as: :article
  # UPDATE
  get 'articles/:id/edit', to: 'articles#edit', as: :edit_article
  patch 'articles/:id', to: 'articles#update'
  # DELETE
  delete 'articles/:id', to: 'articles#destroy'
end
