Rails.application.routes.draw do
  resources :states, only: [:show]
end
