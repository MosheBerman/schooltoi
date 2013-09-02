require 'test_helper'

class OfficeHoursControllerTest < ActionController::TestCase
  setup do
    @office_hour = office_hours(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:office_hours)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create office_hour" do
    assert_difference('OfficeHour.count') do
      post :create, office_hour: { day: @office_hour.day, end: @office_hour.end, start: @office_hour.start }
    end

    assert_redirected_to office_hour_path(assigns(:office_hour))
  end

  test "should show office_hour" do
    get :show, id: @office_hour
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @office_hour
    assert_response :success
  end

  test "should update office_hour" do
    put :update, id: @office_hour, office_hour: { day: @office_hour.day, end: @office_hour.end, start: @office_hour.start }
    assert_redirected_to office_hour_path(assigns(:office_hour))
  end

  test "should destroy office_hour" do
    assert_difference('OfficeHour.count', -1) do
      delete :destroy, id: @office_hour
    end

    assert_redirected_to office_hours_path
  end
end
