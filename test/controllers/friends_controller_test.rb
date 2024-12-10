require "test_helper"

class FriendsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @friend = friends(:one)
  end

  test "should get index" do
    get friends_url
    assert_response :success
  end

  test "should get new" do
    get new_friend_url
    assert_response :success
  end

  test "should create friend" do
    assert_difference("Friend.count") do
<<<<<<< HEAD
      post friends_url, params: { friend: { email: @friend.email, first_name: @friend.first_name, last_name: @friend.last_name, phone: @friend.phone } }
=======
<<<<<<< HEAD
      post friends_url, params: { friend: { email: @friend.email, first_name: @friend.first_name, last_name: @friend.last_name, phone: @friend.phone } }
=======
      post friends_url, params: { friend: { email: @friend.email, first_name: @friend.first_name, last_name: @friend.last_name, phone: @friend.phone} }
>>>>>>> 77d63fdef52d21434cfc012b9ad8bd19ed7aa737
>>>>>>> 97baec1487fe543eda33d8d3a54afadef00b89b4
    end

    assert_redirected_to friend_url(Friend.last)
  end

  test "should show friend" do
    get friend_url(@friend)
    assert_response :success
  end

  test "should get edit" do
    get edit_friend_url(@friend)
    assert_response :success
  end

  test "should update friend" do
    patch friend_url(@friend), params: { friend: { email: @friend.email, first_name: @friend.first_name, last_name: @friend.last_name, phone: @friend.phone } }
    assert_redirected_to friend_url(@friend)
  end

  test "should destroy friend" do
    assert_difference("Friend.count", -1) do
      delete friend_url(@friend)
    end

    assert_redirected_to friends_url
  end
end
