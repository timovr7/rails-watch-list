Rails.application.routes.draw do
  root "lists#index"
  resources :lists, only: [:index, :new, :create, :show, :destroy] do
    resources :bookmarks, only: [:new, :create, :destroy]
  end


end
