Rails.application.routes.draw do

  root to: "welcome#index"

  resource :session, only: [:new, :create, :destroy]
  resource :dashboard, only: [:show]
  resources :tasks, only: [:new, :show, :edit, :create, :update, :destroy]

end
