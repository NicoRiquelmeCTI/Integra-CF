require 'test_helper'

class ExpeditionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @expedition = expeditions(:one)
  end

  test "should get index" do
    get expeditions_url
    assert_response :success
  end

  test "should get new" do
    get new_expedition_url
    assert_response :success
  end

  test "should create expedition" do
    assert_difference('Expedition.count') do
      post expeditions_url, params: { expedition: { expositor_id: @expedition.expositor_id, participants: @expedition.participants, place: @expedition.place, responsable: @expedition.responsable, year: @expedition.year } }
    end

    assert_redirected_to expedition_url(Expedition.last)
  end

  test "should show expedition" do
    get expedition_url(@expedition)
    assert_response :success
  end

  test "should get edit" do
    get edit_expedition_url(@expedition)
    assert_response :success
  end

  test "should update expedition" do
    patch expedition_url(@expedition), params: { expedition: { expositor_id: @expedition.expositor_id, participants: @expedition.participants, place: @expedition.place, responsable: @expedition.responsable, year: @expedition.year } }
    assert_redirected_to expedition_url(@expedition)
  end

  test "should destroy expedition" do
    assert_difference('Expedition.count', -1) do
      delete expedition_url(@expedition)
    end

    assert_redirected_to expeditions_url
  end
end
