class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, 
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, #:confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :team_id, :phone_number, :email, :password, :password_confirmation, :remember_me, :team_memberships_attributes
  # attr_accessible :title, :body

  has_many :team_memberships,
    inverse_of: :user,
    dependent: :destroy

  has_many :consults,
    inverse_of: :user

  belongs_to :team

  has_many :teams,
    through: :team_memberships
  accepts_nested_attributes_for :team_memberships
end
