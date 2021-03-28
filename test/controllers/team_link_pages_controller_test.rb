require 'test_helper'

class TeamLinkPagesControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @base_title = "Team Link"
  end
  
  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get company" do
    get company_path
    assert_response :success
    assert_select "title", "Company | #{@base_title}"
  end

  test "should get products" do
    get products_path
    assert_response :success
    assert_select "title", "Products | #{@base_title}"
  end

  test "should get news" do
    get news_path
    assert_response :success
    assert_select "title", "News | #{@base_title}"
  end

end
