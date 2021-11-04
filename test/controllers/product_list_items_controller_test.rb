require 'test_helper'

class ProductListItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_list_item = product_list_items(:one)
  end

  test "should get index" do
    get product_list_items_url
    assert_response :success
  end

  test "should get new" do
    get new_product_list_item_url
    assert_response :success
  end

  test "should create product_list_item" do
    assert_difference('ProductListItem.count') do
      post product_list_items_url, params: { product_list_item: { product_category_id: @product_list_item.product_category_id, value: @product_list_item.value } }
    end

    assert_redirected_to product_list_item_url(ProductListItem.last)
  end

  test "should show product_list_item" do
    get product_list_item_url(@product_list_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_list_item_url(@product_list_item)
    assert_response :success
  end

  test "should update product_list_item" do
    patch product_list_item_url(@product_list_item), params: { product_list_item: { product_category_id: @product_list_item.product_category_id, value: @product_list_item.value } }
    assert_redirected_to product_list_item_url(@product_list_item)
  end

  test "should destroy product_list_item" do
    assert_difference('ProductListItem.count', -1) do
      delete product_list_item_url(@product_list_item)
    end

    assert_redirected_to product_list_items_url
  end
end
