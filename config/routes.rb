Rails.application.routes.draw do
  root to: "welcome#index"

  resource :session, only: [:new, :create, :destroy]

end
