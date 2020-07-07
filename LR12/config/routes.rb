Rails.application.routes.draw do
  root 'explicit#in'
  get 'explicit/in'
  get 'explicit/ajax'
  get 'explicit/results'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  get '/logout' => 'session#destroy'

  get '/signup' => 'users#new'
  get '/users/results' => 'users#results'
  post '/users' => 'users#create'
end
