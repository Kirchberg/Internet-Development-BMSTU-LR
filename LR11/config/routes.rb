Rails.application.routes.draw do
  root 'explicit#in'
  get 'explicit/in'
  get 'explicit/ajax'
  get 'explicit/results'
end
