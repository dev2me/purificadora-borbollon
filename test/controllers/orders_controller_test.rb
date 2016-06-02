require 'test_helper'

class OrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get orders_url
    assert_response :success
  end

  test "should get new" do
    get new_order_url
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post orders_url, params: { order: { client_id: @order.client_id, fecha_entrada: @order.fecha_entrada, fecha_salida: @order.fecha_salida, tipo_pedido: @order.tipo_pedido } }
    end

    assert_redirected_to order_path(Order.last)
  end

  test "should show order" do
    get order_url(@order)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_url(@order)
    assert_response :success
  end

  test "should update order" do
    patch order_url(@order), params: { order: { client_id: @order.client_id, fecha_entrada: @order.fecha_entrada, fecha_salida: @order.fecha_salida, tipo_pedido: @order.tipo_pedido } }
    assert_redirected_to order_path(@order)
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete order_url(@order)
    end

    assert_redirected_to orders_path
  end
end