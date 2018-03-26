Rails.application.routes.draw do
  root 'homes#index'
  get 'auth/:provider/callback', to: 'sessions#create'
  devise_for :users

end
