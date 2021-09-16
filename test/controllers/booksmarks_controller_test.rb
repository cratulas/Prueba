require 'test_helper'

class BooksmarksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @booksmark = booksmarks(:one)
  end

  test "should get index" do
    get booksmarks_url
    assert_response :success
  end

  test "should get new" do
    get new_booksmark_url
    assert_response :success
  end

  test "should create booksmark" do
    assert_difference('Booksmark.count') do
      post booksmarks_url, params: { booksmark: { name: @booksmark.name, url: @booksmark.url } }
    end

    assert_redirected_to booksmark_url(Booksmark.last)
  end

  test "should show booksmark" do
    get booksmark_url(@booksmark)
    assert_response :success
  end

  test "should get edit" do
    get edit_booksmark_url(@booksmark)
    assert_response :success
  end

  test "should update booksmark" do
    patch booksmark_url(@booksmark), params: { booksmark: { name: @booksmark.name, url: @booksmark.url } }
    assert_redirected_to booksmark_url(@booksmark)
  end

  test "should destroy booksmark" do
    assert_difference('Booksmark.count', -1) do
      delete booksmark_url(@booksmark)
    end

    assert_redirected_to booksmarks_url
  end
end
