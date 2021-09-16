require "application_system_test_case"

class BooksmarksTest < ApplicationSystemTestCase
  setup do
    @booksmark = booksmarks(:one)
  end

  test "visiting the index" do
    visit booksmarks_url
    assert_selector "h1", text: "Booksmarks"
  end

  test "creating a Booksmark" do
    visit booksmarks_url
    click_on "New Booksmark"

    fill_in "Name", with: @booksmark.name
    fill_in "Url", with: @booksmark.url
    click_on "Create Booksmark"

    assert_text "Booksmark was successfully created"
    click_on "Back"
  end

  test "updating a Booksmark" do
    visit booksmarks_url
    click_on "Edit", match: :first

    fill_in "Name", with: @booksmark.name
    fill_in "Url", with: @booksmark.url
    click_on "Update Booksmark"

    assert_text "Booksmark was successfully updated"
    click_on "Back"
  end

  test "destroying a Booksmark" do
    visit booksmarks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Booksmark was successfully destroyed"
  end
end
