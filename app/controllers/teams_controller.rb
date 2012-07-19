class TeamsController < ApplicationController
  inherit_resources
  def index
    @messages = Message.all
  end
end
