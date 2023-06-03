require "test_helper"

class HousingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @housing = housings(:one)
  end

  test "should get index" do
    get housings_url
    assert_response :success
  end

  test "should get new" do
    get new_housing_url
    assert_response :success
  end

  test "should create housing" do
    assert_difference("Housing.count") do
      post housings_url, params: { housing: { address: @housing.address, amount_bathrooms: @housing.amount_bathrooms, amount_rooms: @housing.amount_rooms, city: @housing.city, msquare: @housing.msquare, name: @housing.name, price: @housing.price, state: @housing.state, user_id: @housing.user_id } }
    end

    assert_redirected_to housing_url(Housing.last)
  end

  test "should show housing" do
    get housing_url(@housing)
    assert_response :success
  end

  test "should get edit" do
    get edit_housing_url(@housing)
    assert_response :success
  end

  test "should update housing" do
    patch housing_url(@housing), params: { housing: { address: @housing.address, amount_bathrooms: @housing.amount_bathrooms, amount_rooms: @housing.amount_rooms, city: @housing.city, msquare: @housing.msquare, name: @housing.name, price: @housing.price, state: @housing.state, user_id: @housing.user_id } }
    assert_redirected_to housing_url(@housing)
  end

  test "should destroy housing" do
    assert_difference("Housing.count", -1) do
      delete housing_url(@housing)
    end

    assert_redirected_to housings_url
  end
end
