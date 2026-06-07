class AddRatingsToScoutingReportData < ActiveRecord::Migration[8.1]
  def change
    add_column :scouting_report_data, :speed_rating, :string
    add_column :scouting_report_data, :strength_rating, :string
    add_column :scouting_report_data, :iq_rating, :string
    add_column :scouting_report_data, :effort_rating, :string
  end
end
