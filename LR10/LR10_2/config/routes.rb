Rails.application.routes.draw do
  get 'proxy/input'
  get 'proxy/output'
  get '/output' => 'proxy#output'
  root 'proxy#input'
end
