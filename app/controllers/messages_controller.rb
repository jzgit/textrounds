class MessagesController < ApplicationController
  inherit_resources

  belongs_to :team
  def create
    create! do
      team_path(params[:team_id])
    end
  end
  protected
  def create_resource(object)
    object.user = current_user
    super
  end
end
