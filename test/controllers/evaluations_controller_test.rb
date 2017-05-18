require 'test_helper'

class EvaluationsControllerTest < ActionController::TestCase
  setup do
    @evaluation = evaluations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:evaluations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create evaluation" do
    assert_difference('Evaluation.count') do
      post :create, evaluation: { employee_id: @evaluation.employee_id, ind_1: @evaluation.ind_1, ind_2: @evaluation.ind_2, ind_3: @evaluation.ind_3, ind_4: @evaluation.ind_4, ind_5: @evaluation.ind_5 }
    end

    assert_redirected_to evaluation_path(assigns(:evaluation))
  end

  test "should show evaluation" do
    get :show, id: @evaluation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @evaluation
    assert_response :success
  end

  test "should update evaluation" do
    patch :update, id: @evaluation, evaluation: { employee_id: @evaluation.employee_id, ind_1: @evaluation.ind_1, ind_2: @evaluation.ind_2, ind_3: @evaluation.ind_3, ind_4: @evaluation.ind_4, ind_5: @evaluation.ind_5 }
    assert_redirected_to evaluation_path(assigns(:evaluation))
  end

  test "should destroy evaluation" do
    assert_difference('Evaluation.count', -1) do
      delete :destroy, id: @evaluation
    end

    assert_redirected_to evaluations_path
  end
end
