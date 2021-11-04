require "application_system_test_case"

class ProductListsTest < ApplicationSystemTestCase
  setup do
    @product_list = product_lists(:one)
  end

  test "visiting the index" do
    visit product_lists_url
    assert_selector "h1", text: "Product Lists"
  end

  test "creating a Product list" do
    visit product_lists_url
    click_on "New Product List"

    fill_in "Month", with: @product_list.month_id
    fill_in "Value", with: @product_list.value
    fill_in "Year", with: @product_list.year
    click_on "Create Product list"

    assert_text "Product list was successfully created"
    click_on "Back"
  end

  test "updating a Product list" do
    visit product_lists_url
    click_on "Edit", match: :first

    fill_in "Month", with: @product_list.month_id
    fill_in "Value", with: @product_list.value
    fill_in "Year", with: @product_list.year
    click_on "Update Product list"

    assert_text "Product list was successfully updated"
    click_on "Back"
  end

  test "destroying a Product list" do
    visit product_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product list was successfully destroyed"
  end
end
