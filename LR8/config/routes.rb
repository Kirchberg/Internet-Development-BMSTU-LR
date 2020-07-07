Rails.application.routes.draw do
  root 'twins#user_input'
  get  'user_output' => 'twins#user_output'
  get  'user_input' => 'twins#user_input'
end
