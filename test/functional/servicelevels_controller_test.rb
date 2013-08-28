require 'test_helper'

class ServicelevelsControllerTest < ActionController::TestCase
  setup do
    @servicelevel = servicelevels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:servicelevels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create servicelevel" do
    assert_difference('Servicelevel.count') do
      post :create, servicelevel: { level: @servicelevel.level, long_desc: @servicelevel.long_desc, short_desc: @servicelevel.short_desc }
    end

    assert_redirected_to servicelevel_path(assigns(:servicelevel))
  end

  test "should show servicelevel" do
    get :show, id: @servicelevel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @servicelevel
    assert_response :success
  end

  test "should update servicelevel" do
    put :update, id: @servicelevel, servicelevel: { level: @servicelevel.level, long_desc: @servicelevel.long_desc, short_desc: @servicelevel.short_desc }
    assert_redirected_to servicelevel_path(assigns(:servicelevel))
  end

  test "should destroy servicelevel" do
    assert_difference('Servicelevel.count', -1) do
      delete :destroy, id: @servicelevel
    end

    assert_redirected_to servicelevels_path
  end
end
