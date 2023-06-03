require "application_system_test_case"

class HousingsTest < ApplicationSystemTestCase
  setup do
    @housing = housings(:one)
  end

  test "visiting the index" do
    visit housings_url
    assert_selector "h1", text: "Housings"
  end

  test "should create housing" do
    visit housings_url
    click_on "New housing"

    fill_in "Address", with: @housing.address
    fill_in "Amount bathrooms", with: @housing.amount_bathrooms
    fill_in "Amount rooms", with: @housing.amount_rooms
    fill_in "City", with: @housing.city
    fill_in "Msquare", with: @housing.msquare
    fill_in "Name", with: @housing.name
    fill_in "Price", with: @housing.price
    fill_in "State", with: @housing.state
    fill_in "User", with: @housing.user_id
    click_on "Create Housing"

    assert_text "Housing was successfully created"
    click_on "Back"
  end

  test "should update Housing" do
    visit housing_url(@housing)
    click_on "Edit this housing", match: :first

    fill_in "Address", with: @housing.address
    fill_in "Amount bathrooms", with: @housing.amount_bathrooms
    fill_in "Amount rooms", with: @housing.amount_rooms
    fill_in "City", with: @housing.city
    fill_in "Msquare", with: @housing.msquare
    fill_in "Name", with: @housing.name
    fill_in "Price", with: @housing.price
    fill_in "State", with: @housing.state
    fill_in "User", with: @housing.user_id
    click_on "Update Housing"

    assert_text "Housing was successfully updated"
    click_on "Back"
  end

  test "should destroy Housing" do
    visit housing_url(@housing)
    click_on "Destroy this housing", match: :first

    assert_text "Housing was successfully destroyed"
  end
end
