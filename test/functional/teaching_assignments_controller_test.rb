require 'test_helper'

class TeachingAssignmentsControllerTest < ActionController::TestCase
  setup do
    @teaching_assignment = teaching_assignments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teaching_assignments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create teaching_assignment" do
    assert_difference('TeachingAssignment.count') do
      post :create, teaching_assignment: { salary: @teaching_assignment.salary }
    end

    assert_redirected_to teaching_assignment_path(assigns(:teaching_assignment))
  end

  test "should show teaching_assignment" do
    get :show, id: @teaching_assignment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @teaching_assignment
    assert_response :success
  end

  test "should update teaching_assignment" do
    put :update, id: @teaching_assignment, teaching_assignment: { salary: @teaching_assignment.salary }
    assert_redirected_to teaching_assignment_path(assigns(:teaching_assignment))
  end

  test "should destroy teaching_assignment" do
    assert_difference('TeachingAssignment.count', -1) do
      delete :destroy, id: @teaching_assignment
    end

    assert_redirected_to teaching_assignments_path
  end
end
