require 'test_helper'

class CardsControllerTest < ActionController::TestCase
  setup do
    @card = cards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create card" do
    assert_difference('Card.count') do
      post :create, card: { artist: @card.artist, cmc: @card.cmc, collectorNumber: @card.collectorNumber, colors: @card.colors, imageName: @card.imageName, layout: @card.layout, legalities: @card.legalities, manaCost: @card.manaCost, multiverseid: @card.multiverseid, name: @card.name, oracleText: @card.oracleText, printings: @card.printings, rarity: @card.rarity, type: @card.type }
    end

    assert_redirected_to card_path(assigns(:card))
  end

  test "should show card" do
    get :show, id: @card
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @card
    assert_response :success
  end

  test "should update card" do
    patch :update, id: @card, card: { artist: @card.artist, cmc: @card.cmc, collectorNumber: @card.collectorNumber, colors: @card.colors, imageName: @card.imageName, layout: @card.layout, legalities: @card.legalities, manaCost: @card.manaCost, multiverseid: @card.multiverseid, name: @card.name, oracleText: @card.oracleText, printings: @card.printings, rarity: @card.rarity, type: @card.type }
    assert_redirected_to card_path(assigns(:card))
  end

  test "should destroy card" do
    assert_difference('Card.count', -1) do
      delete :destroy, id: @card
    end

    assert_redirected_to cards_path
  end
end
