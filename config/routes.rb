Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/lists', to: 'lists#index'
  # get '/lists/new', to: 'lists#new', as: :new_list
  # post '/lists', to: 'lists#create'
  # get '/lists/:id', to: 'lists#show', as: :list
  # get '/lists/:id/bookmarks/new', to: 'bookmarks#new', as: :new_bookmark
  # post '/lists/:id/bookmarks', to: 'bookmarks#create'
  root to: 'lists#index'
  resources :lists do
    resources :bookmarks, only: [ :new, :create ]
  end

  resources :bookmarks, only: [:destroy]
end
