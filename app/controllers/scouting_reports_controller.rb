class ScoutingReportsController < ApplicationController
  before_action :set_scouting_report, only: %i[ show edit update destroy ]

  def index
    @scouting_reports = ScoutingReport.all
    @new_scouting_report = ScoutingReport.new
  end

  def show
  end

  def create
    @scouting_report = ScoutingReport.new(scouting_report_params)
    
    if @scouting_report.save
      redirect_to scouting_reports_path, notice: "Scouting report created."
    else
      @scouting_reports = ScoutingReport.all
      render :index, status: :unprocessable_entity
    end
  end

  def update
    if @scouting_report.update(scouting_report_params)
      redirect_to scouting_reports_path, notice: "Scouting report updated."
    else
      render :show, status: :unprocessable_entity
    end
  end

  def destroy
    @scouting_report.destroy!
    redirect_to scouting_reports_path, notice: "Scouting report deleted."
  end

  private

  def set_scouting_report
    @scouting_report = ScoutingReport.find(params[:id])
  end

  def scouting_report_params
    params.expect(scouting_report: [ :fullname, :reporttype, :reportleague, :reportdate, :reporttext, :scouting_questions, :scout_name, :position, :team, :speed_rating, :strength_rating, :iq_rating, :effort_rating, :notes, :floor, :expectation, :ceiling ])
  end
end
