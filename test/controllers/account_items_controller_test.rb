require 'test_helper'

class AccountItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @account_item = account_items(:one)
  end

  test "should get index" do
    get account_items_url
    assert_response :success
  end

  test "should get new" do
    get new_account_item_url
    assert_response :success
  end

  test "should create account_item" do
    assert_difference('AccountItem.count') do
      post account_items_url, params: { account_item: { category_id: @account_item.category_id, value: @account_item.value } }
    end

    assert_redirected_to account_item_url(AccountItem.last)
  end

  test "should show account_item" do
    get account_item_url(@account_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_account_item_url(@account_item)
    assert_response :success
  end

  test "should update account_item" do
    patch account_item_url(@account_item), params: { account_item: { category_id: @account_item.category_id, value: @account_item.value } }
    assert_redirected_to account_item_url(@account_item)
  end

  test "should destroy account_item" do
    assert_difference('AccountItem.count', -1) do
      delete account_item_url(@account_item)
    end

    assert_redirected_to account_items_url
  end
end
