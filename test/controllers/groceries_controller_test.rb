require 'test_helper'

class GroceriesControllerTest < ActionController::TestCase
  setup do
    @grocery = groceries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:groceries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create grocery" do
    assert_difference('Grocery.count') do
      post :create, grocery: { availability: @grocery.availability, list_id: @grocery.list_id, product_id: @grocery.product_id, quantity: @grocery.quantity }
    end

    assert_redirected_to grocery_path(assigns(:grocery))
  end

  test "should show grocery" do
    get :show, id: @grocery
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @grocery
    assert_response :success
  end

  test "should update grocery" do
    patch :update, id: @grocery, grocery: { availability: @grocery.availability, list_id: @grocery.list_id, product_id: @grocery.product_id, quantity: @grocery.quantity }
    assert_redirected_to grocery_path(assigns(:grocery))
  end

  test "should destroy grocery" do
    assert_difference('Grocery.count', -1) do
      delete :destroy, id: @grocery
    end

    assert_redirected_to groceries_path
  end
end
