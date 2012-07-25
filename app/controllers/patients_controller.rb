class PatientsController < ApplicationController
  inherit_resources
  helper_method :current_patient

  def create
    create! do |success, failure|
      success.html { redirect_to new_consult_path }
    end
  end

  def current_patient
    Patient.find(params[:id]) if params[:id]
  end
end
