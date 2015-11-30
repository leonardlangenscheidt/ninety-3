require 'test_helper'

class GamedaysControllerTest < ActionController::TestCase
  setup do
    @gameday = gamedays(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gamedays)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gameday" do
    assert_difference('Gameday.count') do
      post :create, gameday: { league_id: @gameday.league_id, number: @gameday.number }
    end

    assert_redirected_to gameday_path(assigns(:gameday))
  end

  test "should show gameday" do
    get :show, id: @gameday
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gameday
    assert_response :success
  end

  test "should update gameday" do
    patch :update, id: @gameday, gameday: { league_id: @gameday.league_id, number: @gameday.number }
    assert_redirected_to gameday_path(assigns(:gameday))
  end

  test "should destroy gameday" do
    assert_difference('Gameday.count', -1) do
      delete :destroy, id: @gameday
    end

    assert_redirected_to gamedays_path
  end
end
