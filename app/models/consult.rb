class Consult < ActiveRecord::Base
  attr_accessible :user_id, :primary_team_id, :consulting_team_id, :room, :patient_id, :hpi, :problem_list, :medications, :cross_cover
  belongs_to :team,
    inverse_of: :consults
  belongs_to :patient,
    inverse_of: :consults
  belongs_to :user,
    inverse_of: :consults

  class << self
    def for_team(team)
      where("consulting_team_id = ?", team.id)
    end
    def ordered_by(team)
      where("primary_team_id = ?", team.id)
    end
    def owned_by(user)
      where("user_id = ?", user.id)
    end
  end


end
