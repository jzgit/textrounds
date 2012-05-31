class ConsultsController < ApplicationController
  inherit_resources

  def create
    create! do |success, failure|
      SendTextControllerController.send_text_message(resource)
    end
  end
end
