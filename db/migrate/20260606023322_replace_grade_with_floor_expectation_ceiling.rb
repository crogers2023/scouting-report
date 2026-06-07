class ReplaceGradeWithFloorExpectationCeiling < ActiveRecord::Migration[8.1]
  def change
    remove_column :scouting_report_data, :reportgrade, :string
    add_column :scouting_report_data, :floor, :string
    add_column :scouting_report_data, :expectation, :string
    add_column :scouting_report_data, :ceiling, :string
  end
end
