require 'test_helper'

class WorkOrdersControllerTest < ActionController::TestCase
  setup do
    @work_order = work_orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:work_orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create work_order" do
    assert_difference('Work_Order.count') do
      post :create, work_order: { customer: @work_order.customer, description: @work_order.description, employee: @work_order.employee, end_date: @work_order.end_date, hours: @work_order.hours, notes: @work_order.notes, start_date: @work_order.start_date, wo_nbr: @work_order.wo_nbr }
    end

    assert_redirected_to work_order_path(assigns(:work_order))
  end

  test "should show work_order" do
    get :show, id: @work_order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @work_order
    assert_response :success
  end

  test "should update work_order" do
    patch :update, id: @work_order, work_order: { customer: @work_order.customer, description: @work_order.description, employee: @work_order.employee, end_date: @work_order.end_date, hours: @work_order.hours, notes: @work_order.notes, start_date: @work_order.start_date, wo_nbr: @work_order.wo_nbr }
    assert_redirected_to work_order_path(assigns(:work_order))
  end

  test "should destroy work_order" do
    assert_difference('Work_Order.count', -1) do
      delete :destroy, id: @work_order
    end

    assert_redirected_to work_orders_path
  end
end
