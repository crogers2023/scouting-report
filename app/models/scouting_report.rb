class ScoutingReport < ApplicationRecord
  self.table_name = 'scouting_report_data'

  GRADES = ["Franchise", "Pro-Bowl", "Starter", "Backup", "Roster", "Practice Squad"]
  RATINGS = ["A", "B", "C", "D", "F"]
  
  GRADE_FIELDS = [
    [:floor, "Floor"],
    [:expectation, "Expectation"],
    [:ceiling, "Ceiling"]
  ]
  
  RATING_FIELDS = [
    [:speed_rating, "Speed"],
    [:strength_rating, "Strength"],
    [:iq_rating, "Football IQ"],
    [:effort_rating, "Effort/Motor"]
  ]
end
