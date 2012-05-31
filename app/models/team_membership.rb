class TeamMembership < ActiveRecord::Base
  attr_accessible :team, :user

  belongs_to :user,
    inverse_of: :team_memberships
  
  belongs_to :team,
    inverse_of: :team_memberships
end
