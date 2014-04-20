require 'test_helper'

class MtgSetsControllerTest < ActionController::TestCase
  setup do
    @mtg_set = mtg_sets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mtg_sets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mtg_set" do
    assert_difference('MtgSet.count') do
      post :create, mtg_set: { block: @mtg_set.block, border: @mtg_set.border, code: @mtg_set.code, name: @mtg_set.name, releaseDate: @mtg_set.releaseDate, type: @mtg_set.type }
    end

    assert_redirected_to mtg_set_path(assigns(:mtg_set))
  end

  test "should show mtg_set" do
    get :show, id: @mtg_set
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mtg_set
    assert_response :success
  end

  test "should update mtg_set" do
    patch :update, id: @mtg_set, mtg_set: { block: @mtg_set.block, border: @mtg_set.border, code: @mtg_set.code, name: @mtg_set.name, releaseDate: @mtg_set.releaseDate, type: @mtg_set.type }
    assert_redirected_to mtg_set_path(assigns(:mtg_set))
  end

  test "should destroy mtg_set" do
    assert_difference('MtgSet.count', -1) do
      delete :destroy, id: @mtg_set
    end

    assert_redirected_to mtg_sets_path
  end
end
