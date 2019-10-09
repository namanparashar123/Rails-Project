require 'test_helper'

class ViolatorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get violators_index_url
    assert_response :success
  end

  test "should get show" do
    get violators_show_url
    assert_response :success
  end

end
