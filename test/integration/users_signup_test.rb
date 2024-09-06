require "test_helper"

class UsersSignupTest < ActionDispatch::IntegrationTest
  test "invalid signup information" do
    get signup_path
    assert_no_difference "User.count" do
      post users_path,
           params: {
             user: {
               name: "",
               email: "user@invalid",
               password: "foo",
               password_confirmaion: "bar"
             }
           }
    end
    assert_response :unprocessable_entity
    assert_template "users/new"
    assert_select "div#error_explanation"
    assert_select "div.field_with_errors"
  end

  test "valid signup information" do
    get signup_path
    assert_difference "User.count" do
      post users_path,
           params: {
             user: {
               name: "Chunky Bacon",
               email: "chunky@bacon.com",
               password: "P@ssword",
               password_confirmation: "P@ssword"
             }
           }
    end
    follow_redirect!
    assert_template "users/show"
    assert_not flash.empty?
  end
end
