require 'test_helper'

class AppTestTest < ActionDispatch::IntegrationTest
  test 'Redirect to page with authorization' do
    get '/'
    assert_response 302
    follow_redirect!
    assert_select 'h4', 'Welcome!'
  end

  test 'Registration, Sign In, Calculation' do
    get '/signup'
    assert_response :success

    post '/users', params: {user: {username: '111', email: '111@mail.ru', password: '111', password_confirmation: '111'}}
    assert_response :redirect

    get '/'
    assert_response :success
    post '/login', params: {username: '111', password: '111'}
    assert_response :redirect
    follow_redirect!
    assert_response :success
    assert_equal '/explicit/in', path
  end
end
