require 'test_helper'

class ExpositorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @expositor = expositors(:one)
  end

  test "should get index" do
    get expositors_url
    assert_response :success
  end

  test "should get new" do
    get new_expositor_url
    assert_response :success
  end

  test "should create expositor" do
    assert_difference('Expositor.count') do
      post expositors_url, params: { expositor: { assistant: @expositor.assistant, bio: @expositor.bio, category: @expositor.category, comments: @expositor.comments, congress: @expositor.congress, congress_id: @expositor.congress_id, degree: @expositor.degree, expedition: @expositor.expedition, funding: @expositor.funding, gestor: @expositor.gestor, links: @expositor.links, new_gestor: @expositor.new_gestor, state: @expositor.state, suggest: @expositor.suggest, user_id: @expositor.user_id, web: @expositor.web } }
    end

    assert_redirected_to expositor_url(Expositor.last)
  end

  test "should show expositor" do
    get expositor_url(@expositor)
    assert_response :success
  end

  test "should get edit" do
    get edit_expositor_url(@expositor)
    assert_response :success
  end

  test "should update expositor" do
    patch expositor_url(@expositor), params: { expositor: { assistant: @expositor.assistant, bio: @expositor.bio, category: @expositor.category, comments: @expositor.comments, congress: @expositor.congress, congress_id: @expositor.congress_id, degree: @expositor.degree, expedition: @expositor.expedition, funding: @expositor.funding, gestor: @expositor.gestor, links: @expositor.links, new_gestor: @expositor.new_gestor, state: @expositor.state, suggest: @expositor.suggest, user_id: @expositor.user_id, web: @expositor.web } }
    assert_redirected_to expositor_url(@expositor)
  end

  test "should destroy expositor" do
    assert_difference('Expositor.count', -1) do
      delete expositor_url(@expositor)
    end

    assert_redirected_to expositors_url
  end
end
