require 'test_helper'

class VolcoordinatorsControllerTest < ActionController::TestCase
  setup do
    @volcoordinator = volcoordinators(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:volcoordinators)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create volcoordinator" do
    assert_difference('Volcoordinator.count') do
      post :create, volcoordinator: { appEmailAcknowledgeText: @volcoordinator.appEmailAcknowledgeText, email: @volcoordinator.email }
    end

    assert_redirected_to volcoordinator_path(assigns(:volcoordinator))
  end

  test "should show volcoordinator" do
    get :show, id: @volcoordinator
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @volcoordinator
    assert_response :success
  end

  test "should update volcoordinator" do
    put :update, id: @volcoordinator, volcoordinator: { appEmailAcknowledgeText: @volcoordinator.appEmailAcknowledgeText, email: @volcoordinator.email }
    assert_redirected_to volcoordinator_path(assigns(:volcoordinator))
  end

  test "should destroy volcoordinator" do
    assert_difference('Volcoordinator.count', -1) do
      delete :destroy, id: @volcoordinator
    end

    assert_redirected_to volcoordinators_path
  end
end
