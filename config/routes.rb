Rails.application.routes.draw do
  get 'votings/index'

  resource :users
  root 'sessions#new'

  get    '/signup',  to: 'users#new'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  post 'upvote', to: 'votings#upvote'
end
