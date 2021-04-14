require 'test_helper'

class Admin::DashbordsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_dashbords_index_url
    assert_response :success
  end

end
