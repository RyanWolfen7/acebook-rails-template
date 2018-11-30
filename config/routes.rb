Rails.application.routes.draw do
  get '/', to: 'users#new'
  get 'users/:id', to: 'users#show', as: 'user'
  get 'users/:id/show_post', to: 'users#show_post'
  get 'posts/index', to: 'posts#index'
  get 'posts/:id/edit', to: 'posts#edit'
  get 'posts/:id/show', to: 'posts#show'
  patch 'posts/:id', to: 'posts#update'
  delete 'posts/:id', to: 'posts#delete'
  delete 'sessions/:id', to: 'sessions#destroy'
  get 'comments/:id/new', to: 'comments#new'
  root 'themes#index'
<<<<<<< HEAD
  root 'comments#new'
  

=======
  # root 'comments#new'
# '/comments/new/' + (post.id.to_s)
>>>>>>> bb5afad30919f65db36d54c790d2bdc86fcee632
  resources :sessions
  resources :comments
  resources :themes
  resources :posts
  resources :users
  devise_for :users
  get '/users/sign_out' => 'devise/sessions#destroy', :as => :destroy_user_session
  resources :users, only: [:show]
end
