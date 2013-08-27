require 'test_helper'

class FosterersControllerTest < ActionController::TestCase
  setup do
    @fosterer = fosterers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fosterers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fosterer" do
    assert_difference('Fosterer.count') do
      post :create, fosterer: { city: @fosterer.city, email: @fosterer.email, firstname: @fosterer.firstname, lastname: @fosterer.lastname, street: @fosterer.street, streetNumber: @fosterer.streetNumber, suburb: @fosterer.suburb, unitNumber: @fosterer.unitNumber, zipCode: @fosterer.zipCode }
    end

    assert_redirected_to fosterer_path(assigns(:fosterer))
  end

  test "should show fosterer" do
    get :show, id: @fosterer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fosterer
    assert_response :success
  end

  test "should update fosterer" do
    put :update, id: @fosterer, fosterer: { city: @fosterer.city, email: @fosterer.email, firstname: @fosterer.firstname, lastname: @fosterer.lastname, street: @fosterer.street, streetNumber: @fosterer.streetNumber, suburb: @fosterer.suburb, unitNumber: @fosterer.unitNumber, zipCode: @fosterer.zipCode }
    assert_redirected_to fosterer_path(assigns(:fosterer))
  end

  test "should destroy fosterer" do
    assert_difference('Fosterer.count', -1) do
      delete :destroy, id: @fosterer
    end

    assert_redirected_to fosterers_path
  end
end
