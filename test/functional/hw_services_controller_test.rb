require 'test_helper'

class HwServicesControllerTest < ActionController::TestCase
  setup do
    @hw_service = hw_services(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hw_services)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hw_service" do
    assert_difference('HwService.count') do
      post :create, hw_service: { issue_date: @hw_service.issue_date, ordernr: @hw_service.ordernr, period_of_notice: @hw_service.period_of_notice, renewal_auto: @hw_service.renewal_auto, startdate: @hw_service.startdate, subordernr: @hw_service.subordernr, supplier_nr: @hw_service.supplier_nr, validity: @hw_service.validity }
    end

    assert_redirected_to hw_service_path(assigns(:hw_service))
  end

  test "should show hw_service" do
    get :show, id: @hw_service
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hw_service
    assert_response :success
  end

  test "should update hw_service" do
    put :update, id: @hw_service, hw_service: { issue_date: @hw_service.issue_date, ordernr: @hw_service.ordernr, period_of_notice: @hw_service.period_of_notice, renewal_auto: @hw_service.renewal_auto, startdate: @hw_service.startdate, subordernr: @hw_service.subordernr, supplier_nr: @hw_service.supplier_nr, validity: @hw_service.validity }
    assert_redirected_to hw_service_path(assigns(:hw_service))
  end

  test "should destroy hw_service" do
    assert_difference('HwService.count', -1) do
      delete :destroy, id: @hw_service
    end

    assert_redirected_to hw_services_path
  end
end
