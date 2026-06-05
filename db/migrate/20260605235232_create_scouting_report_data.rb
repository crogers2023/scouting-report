class CreateScoutingReportData < ActiveRecord::Migration[8.1]
  def change
    create_table :scouting_report_data do |t|
      t.string :fullname
      t.string :reporttype
      t.string :reportleague
      t.date :reportdate
      t.text :reporttext
      t.text :scouting_questions
      t.string :reportgrade
      t.string :scout_name
      t.string :position
      t.string :team

      t.timestamps
    end
  end
end
