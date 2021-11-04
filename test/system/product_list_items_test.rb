require "application_system_test_case"

class ProductListItemsTest < ApplicationSystemTestCase
  setup do
    @product_list_item = product_list_items(:one)
  end

  test "visiting the index" do
    visit product_list_items_url
    assert_selector "h1", text: "Product List Items"
  end

  test "creating a Product list item" do
    visit product_list_items_url
    click_on "New Product List Item"

    fill_in "Product category", with: @product_list_item.product_category_id
    fill_in "Value", with: @product_list_item.value
    click_on "Create Product list item"

    assert_text "Product list item was successfully created"
    click_on "Back"
  end

  test "updating a Product list item" do
    visit product_list_items_url
    click_on "Edit", match: :first

    fill_in "Product category", with: @product_list_item.product_category_id
    fill_in "Value", with: @product_list_item.value
    click_on "Update Product list item"

    assert_text "Product list item was successfully updated"
    click_on "Back"
  end

  test "destroying a Product list item" do
    visit product_list_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product list item was successfully destroyed"
  end
end
