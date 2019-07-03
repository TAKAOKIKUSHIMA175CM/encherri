require 'test_helper'

class CherriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cherries_index_url
    assert_response :success
  end

  test "should get new" do
    get cherries_new_url
    assert_response :success
  end

  test "should get create" do
    get cherries_create_url
    assert_response :success
  end

  test "should get edit" do
    get cherries_edit_url
    assert_response :success
  end

  test "should get update" do
    get cherries_update_url
    assert_response :success
  end

  test "should get destroy" do
    get cherries_destroy_url
    assert_response :success
  end

end
