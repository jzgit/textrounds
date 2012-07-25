class Message < ActiveRecord::Base
  attr_accessible :text, :team_id, :user_id
  belongs_to :user
  belongs_to :team,
    inverse_of: :messages
end
