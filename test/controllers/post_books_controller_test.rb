require 'test_helper'

class PostBooksControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get post_books_new_url
    assert_response :success
  end

  test "should get index" do
    get post_books_index_url
    assert_response :success
  end

  test "should get show" do
    get post_books_show_url
    assert_response :success
  end

  test "should get edit" do
    get post_books_edit_url
    assert_response :success
  end

end
