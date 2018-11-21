Rails.application.routes.draw do
  get 'user/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "application#hello"
  resources :posts
  resources :user
end
