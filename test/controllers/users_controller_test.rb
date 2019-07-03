require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get users_show_url
    assert_response :success
  end

  test "should get update" do
    get users_update_url
    assert_response :success
  end

  test "should get destroy" do
    get users_destroy_url
    assert_response :success
  end

  test "should get admin" do
    get users_admin_url
    assert_response :success
  end

  test "should get admin_index" do
    get users_admin_index_url
    assert_response :success
  end

  test "should get admin_update" do
    get users_admin_update_url
    assert_response :success
  end

  test "should get admin_destroy" do
    get users_admin_destroy_url
    assert_response :success
  end

end
