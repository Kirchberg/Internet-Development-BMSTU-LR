require 'test_helper'

class XmlControllerTest < ActionDispatch::IntegrationTest

  test "check RSS format" do
    get '/' , params: {m: '10', format: :rss}
    assert_response :success
    assert_includes @response.headers['Content-Type'], 'application/rss'
  end

  test "check XML format" do
    get '/' , params: {m: '10', format: :xml}
    assert_response :success
    assert_includes @response.headers['Content-Type'], 'application/xml'
  end

end
