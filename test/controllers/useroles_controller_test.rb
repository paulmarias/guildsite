require "test_helper"

class UserolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @userole = useroles(:one)
  end

  test "should get index" do
    get useroles_url
    assert_response :success
  end

  test "should get new" do
    get new_userole_url
    assert_response :success
  end

  test "should create userole" do
    assert_difference("Userole.count") do
      post useroles_url, params: { userole: { role: @userole.role, user: @userole.user } }
    end

    assert_redirected_to userole_url(Userole.last)
  end

  test "should show userole" do
    get userole_url(@userole)
    assert_response :success
  end

  test "should get edit" do
    get edit_userole_url(@userole)
    assert_response :success
  end

  test "should update userole" do
    patch userole_url(@userole), params: { userole: { role: @userole.role, user: @userole.user } }
    assert_redirected_to userole_url(@userole)
  end

  test "should destroy userole" do
    assert_difference("Userole.count", -1) do
      delete userole_url(@userole)
    end

    assert_redirected_to useroles_url
  end
end
