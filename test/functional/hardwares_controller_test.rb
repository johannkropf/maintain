require 'test_helper'

class HardwaresControllerTest < ActionController::TestCase
  setup do
    @hardware = hardwares(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hardwares)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hardware" do
    assert_difference('Hardware.count') do
      post :create, hardware: { desc: @hardware.desc, location: @hardware.location, model: @hardware.model, serialnr: @hardware.serialnr, type: @hardware.type }
    end

    assert_redirected_to hardware_path(assigns(:hardware))
  end

  test "should show hardware" do
    get :show, id: @hardware
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hardware
    assert_response :success
  end

  test "should update hardware" do
    put :update, id: @hardware, hardware: { desc: @hardware.desc, location: @hardware.location, model: @hardware.model, serialnr: @hardware.serialnr, type: @hardware.type }
    assert_redirected_to hardware_path(assigns(:hardware))
  end

  test "should destroy hardware" do
    assert_difference('Hardware.count', -1) do
      delete :destroy, id: @hardware
    end

    assert_redirected_to hardwares_path
  end
end