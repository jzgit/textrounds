class PatientsController < ApplicationController
  inherit_resources

  def create
    create! do |success, failure|
      success.html { redirect_to new_consult_path }
    end
  end
end
