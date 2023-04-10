require "test_helper"

class MatchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @match = matches(:one)
  end

  test "should get index" do
    get matches_url
    assert_response :success
  end

  test "should get new" do
    get new_match_url
    assert_response :success
  end

  test "should create match" do
    assert_difference("Match.count") do
      post matches_url, params: { match: { competitor_name: @match.competitor_name, is_home: @match.is_home, outfit_color: @match.outfit_color, stadium_location: @match.stadium_location, stadium_name: @match.stadium_name, start_at: @match.start_at } }
    end

    assert_redirected_to match_url(Match.last)
  end

  test "should show match" do
    get match_url(@match)
    assert_response :success
  end

  test "should get edit" do
    get edit_match_url(@match)
    assert_response :success
  end

  test "should update match" do
    patch match_url(@match), params: { match: { competitor_name: @match.competitor_name, is_home: @match.is_home, outfit_color: @match.outfit_color, stadium_location: @match.stadium_location, stadium_name: @match.stadium_name, start_at: @match.start_at } }
    assert_redirected_to match_url(@match)
  end

  test "should destroy match" do
    assert_difference("Match.count", -1) do
      delete match_url(@match)
    end

    assert_redirected_to matches_url
  end
end
