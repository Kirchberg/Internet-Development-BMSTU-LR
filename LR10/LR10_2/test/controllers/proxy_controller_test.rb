require 'test_helper'
require 'nokogiri'

class ProxyControllerTest < ActionDispatch::IntegrationTest
  test "should get input" do
    get proxy_input_path
    assert_response :success
  end

  test "should get output" do
    get proxy_output_path
    assert_response :success
  end

  test 'test url xslt' do
    get '/output?side=client-with-xslt'
    assert body.include?('/browser_transform.xslt')
  end

end
