require 'test_helper'

class HwServicepositionsControllerTest < ActionController::TestCase
  setup do
    @hw_serviceposition = hw_servicepositions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hw_servicepositions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hw_serviceposition" do
    assert_difference('HwServiceposition.count') do
      post :create, hw_serviceposition: { amount: @hw_serviceposition.amount, end_date: @hw_serviceposition.end_date, period: @hw_serviceposition.period, start_date: @hw_serviceposition.start_date }
    end

    assert_redirected_to hw_serviceposition_path(assigns(:hw_serviceposition))
  end

  test "should show hw_serviceposition" do
    get :show, id: @hw_serviceposition
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hw_serviceposition
    assert_response :success
  end

  test "should update hw_serviceposition" do
    put :update, id: @hw_serviceposition, hw_serviceposition: { amount: @hw_serviceposition.amount, end_date: @hw_serviceposition.end_date, period: @hw_serviceposition.period, start_date: @hw_serviceposition.start_date }
    assert_redirected_to hw_serviceposition_path(assigns(:hw_serviceposition))
  end

  test "should destroy hw_serviceposition" do
    assert_difference('HwServiceposition.count', -1) do
      delete :destroy, id: @hw_serviceposition
    end

    assert_redirected_to hw_servicepositions_path
  end
end
