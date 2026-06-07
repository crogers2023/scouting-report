require "test_helper"

class ScoutingReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @scouting_report = scouting_reports(:one)
  end

  test "should get index" do
    get scouting_reports_url
    assert_response :success
  end

  test "should get new" do
    get new_scouting_report_url
    assert_response :success
  end

  test "should create scouting_report" do
    assert_difference("ScoutingReport.count") do
      post scouting_reports_url, params: { scouting_report: { fullname: @scouting_report.fullname, position: @scouting_report.position, reportdate: @scouting_report.reportdate, floor: @scouting_report.floor, expectation: @scouting_report.expectation, ceiling: @scouting_report.ceiling, reportleague: @scouting_report.reportleague, reporttext: @scouting_report.reporttext, reporttype: @scouting_report.reporttype, scout_name: @scouting_report.scout_name, scouting_questions: @scouting_report.scouting_questions, team: @scouting_report.team, speed_rating: @scouting_report.speed_rating, strength_rating: @scouting_report.strength_rating, iq_rating: @scouting_report.iq_rating, effort_rating: @scouting_report.effort_rating } }
    end

    assert_redirected_to scouting_report_url(ScoutingReport.last)
  end

  test "should show scouting_report" do
    get scouting_report_url(@scouting_report)
    assert_response :success
  end

  test "should get edit" do
    get edit_scouting_report_url(@scouting_report)
    assert_response :success
  end

  test "should update scouting_report" do
    patch scouting_report_url(@scouting_report), params: { scouting_report: { fullname: @scouting_report.fullname, position: @scouting_report.position, reportdate: @scouting_report.reportdate, floor: @scouting_report.floor, expectation: @scouting_report.expectation, ceiling: @scouting_report.ceiling, reportleague: @scouting_report.reportleague, reporttext: @scouting_report.reporttext, reporttype: @scouting_report.reporttype, scout_name: @scouting_report.scout_name, scouting_questions: @scouting_report.scouting_questions, team: @scouting_report.team, speed_rating: @scouting_report.speed_rating, strength_rating: @scouting_report.strength_rating, iq_rating: @scouting_report.iq_rating, effort_rating: @scouting_report.effort_rating } }
    assert_redirected_to scouting_report_url(@scouting_report)
  end

  test "should destroy scouting_report" do
    assert_difference("ScoutingReport.count", -1) do
      delete scouting_report_url(@scouting_report)
    end

    assert_redirected_to scouting_reports_url
  end
end
