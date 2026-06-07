class AddNotesToScoutingReportData < ActiveRecord::Migration[8.1]
  def change
    add_column :scouting_report_data, :notes, :text
  end
end
