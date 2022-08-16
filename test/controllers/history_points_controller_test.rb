require "test_helper"

class HistoryPointsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @history_point = history_points(:one)
  end

  test "should get index" do
    get history_points_url, as: :json
    assert_response :success
  end

  test "should create history_point" do
    assert_difference("HistoryPoint.count") do
      post history_points_url, params: { history_point: { recived: @history_point.recived, score_id: @history_point.score_id, store_id: @history_point.store_id, time: @history_point.time, used_points: @history_point.used_points } }, as: :json
    end

    assert_response :created
  end

  test "should show history_point" do
    get history_point_url(@history_point), as: :json
    assert_response :success
  end

  test "should update history_point" do
    patch history_point_url(@history_point), params: { history_point: { recived: @history_point.recived, score_id: @history_point.score_id, store_id: @history_point.store_id, time: @history_point.time, used_points: @history_point.used_points } }, as: :json
    assert_response :success
  end

  test "should destroy history_point" do
    assert_difference("HistoryPoint.count", -1) do
      delete history_point_url(@history_point), as: :json
    end

    assert_response :no_content
  end
end
