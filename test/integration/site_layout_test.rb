require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest

  test "layout links" do
    get root_path
    assert_template 'team_link_pages/home'
    assert_select "a[href=?]", root_path
    assert_select "a[href=?]", company_path
    assert_select "a[href=?]", products_path
    assert_select "a[href=?]", news_path
  end
end