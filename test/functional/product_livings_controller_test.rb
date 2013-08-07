require 'test_helper'

class ProductLivingsControllerTest < ActionController::TestCase
  setup do
    @product_living = product_livings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_livings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_living" do
    assert_difference('ProductLiving.count') do
      post :create, product_living: {  }
    end

    assert_redirected_to product_living_path(assigns(:product_living))
  end

  test "should show product_living" do
    get :show, id: @product_living
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product_living
    assert_response :success
  end

  test "should update product_living" do
    put :update, id: @product_living, product_living: {  }
    assert_redirected_to product_living_path(assigns(:product_living))
  end

  test "should destroy product_living" do
    assert_difference('ProductLiving.count', -1) do
      delete :destroy, id: @product_living
    end

    assert_redirected_to product_livings_path
  end
end
