Rails.application.routes.draw do
  get 'session/login'
  post 'session/create'
  get 'session/logout'
  resources :users
  root 'hyp#input'
  post '/', to: 'hyp#output'


end
