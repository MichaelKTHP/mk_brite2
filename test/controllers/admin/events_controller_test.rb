require 'test_helper'

class Admin::EventsControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get admin_events_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get admin_events_destroy_url
    assert_response :success
  end

end
