require 'test_helper'

class ProfessorsControllerTest < ActionController::TestCase
  setup do
    @professor = professors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:professors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create professor" do
    assert_difference('Professor.count') do
      post :create, professor: { department: @professor.department, email: @professor.email, is_adjunct: @professor.is_adjunct, name: @professor.name, offers_appointment: @professor.offers_appointment, office_building: @professor.office_building, office_number: @professor.office_number, phone: @professor.phone, website: @professor.website }
    end

    assert_redirected_to professor_path(assigns(:professor))
  end

  test "should show professor" do
    get :show, id: @professor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @professor
    assert_response :success
  end

  test "should update professor" do
    put :update, id: @professor, professor: { department: @professor.department, email: @professor.email, is_adjunct: @professor.is_adjunct, name: @professor.name, offers_appointment: @professor.offers_appointment, office_building: @professor.office_building, office_number: @professor.office_number, phone: @professor.phone, website: @professor.website }
    assert_redirected_to professor_path(assigns(:professor))
  end

  test "should destroy professor" do
    assert_difference('Professor.count', -1) do
      delete :destroy, id: @professor
    end

    assert_redirected_to professors_path
  end
end
