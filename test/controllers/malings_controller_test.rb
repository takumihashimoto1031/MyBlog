require "test_helper"

class MalingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @maling = malings(:one)
  end

  test "should get index" do
    get malings_url
    assert_response :success
  end

  test "should get new" do
    get new_maling_url
    assert_response :success
  end

  test "should create maling" do
    assert_difference('Maling.count') do
      post malings_url, params: { maling: { message: @maling.message, title: @maling.title } }
    end

    assert_redirected_to maling_url(Maling.last)
  end

  test "should show maling" do
    get maling_url(@maling)
    assert_response :success
  end

  test "should get edit" do
    get edit_maling_url(@maling)
    assert_response :success
  end

  test "should update maling" do
    patch maling_url(@maling), params: { maling: { message: @maling.message, title: @maling.title } }
    assert_redirected_to maling_url(@maling)
  end

  test "should destroy maling" do
    assert_difference('Maling.count', -1) do
      delete maling_url(@maling)
    end

    assert_redirected_to malings_url
  end
end
