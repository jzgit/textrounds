class Team < ActiveRecord::Base
  attr_accessible :name

  has_many :team_memberships,
    inverse_of: :team,
    dependent: :destroy
  has_many :users,
    through: :team_memberships
  has_many :messages
  has_many :consults,
    foreign_key: "consulting_team_id"
end
