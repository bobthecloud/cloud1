require 'test_helper'

class ActorlistsControllerTest < ActionController::TestCase
  setup do
    @actorlist = actorlists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:actorlists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create actorlist" do
    assert_difference('Actorlist.count') do
      post :create, actorlist: { actor_id: @actorlist.actor_id, dvd_id: @actorlist.dvd_id }
    end

    assert_redirected_to actorlist_path(assigns(:actorlist))
  end

  test "should show actorlist" do
    get :show, id: @actorlist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @actorlist
    assert_response :success
  end

  test "should update actorlist" do
    put :update, id: @actorlist, actorlist: { actor_id: @actorlist.actor_id, dvd_id: @actorlist.dvd_id }
    assert_redirected_to actorlist_path(assigns(:actorlist))
  end

  test "should destroy actorlist" do
    assert_difference('Actorlist.count', -1) do
      delete :destroy, id: @actorlist
    end

    assert_redirected_to actorlists_path
  end
end
