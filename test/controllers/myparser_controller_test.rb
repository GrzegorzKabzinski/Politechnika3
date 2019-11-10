require 'test_helper'

class MyparserControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get myparser_index_url
    assert_response :success
  end

end
