json.extract! scouting_report, :id, :fullname, :reporttype, :reportleague, :reportdate, :reporttext, :scouting_questions, :floor, :expectation, :ceiling, :scout_name, :position, :team, :speed_rating, :strength_rating, :iq_rating, :effort_rating, :notes, :created_at, :updated_at
json.url scouting_report_url(scouting_report, format: :json)
