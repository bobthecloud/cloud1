require 'test_helper'

class DvdActorsControllerTest < ActionController::TestCase
  setup do
    @dvd_actor = dvd_actors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dvd_actors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dvd_actor" do
    assert_difference('DvdActor.count') do
      post :create, dvd_actor: { actor_id: @dvd_actor.actor_id, dvd_id: @dvd_actor.dvd_id }
    end

    assert_redirected_to dvd_actor_path(assigns(:dvd_actor))
  end

  test "should show dvd_actor" do
    get :show, id: @dvd_actor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dvd_actor
    assert_response :success
  end

  test "should update dvd_actor" do
    put :update, id: @dvd_actor, dvd_actor: { actor_id: @dvd_actor.actor_id, dvd_id: @dvd_actor.dvd_id }
    assert_redirected_to dvd_actor_path(assigns(:dvd_actor))
  end

  test "should destroy dvd_actor" do
    assert_difference('DvdActor.count', -1) do
      delete :destroy, id: @dvd_actor
    end

    assert_redirected_to dvd_actors_path
  end
end
