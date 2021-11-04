require "application_system_test_case"

class AccountItemsTest < ApplicationSystemTestCase
  setup do
    @account_item = account_items(:one)
  end

  test "visiting the index" do
    visit account_items_url
    assert_selector "h1", text: "Account Items"
  end

  test "creating a Account item" do
    visit account_items_url
    click_on "New Account Item"

    fill_in "Category", with: @account_item.category_id
    fill_in "Value", with: @account_item.value
    click_on "Create Account item"

    assert_text "Account item was successfully created"
    click_on "Back"
  end

  test "updating a Account item" do
    visit account_items_url
    click_on "Edit", match: :first

    fill_in "Category", with: @account_item.category_id
    fill_in "Value", with: @account_item.value
    click_on "Update Account item"

    assert_text "Account item was successfully updated"
    click_on "Back"
  end

  test "destroying a Account item" do
    visit account_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Account item was successfully destroyed"
  end
end
