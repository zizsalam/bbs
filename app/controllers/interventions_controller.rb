# app/controllers/interventions_controller.rb
class InterventionsController < ApplicationController


  def new
    @intervention = Intervention.new
  end

  def create
    @intervention = current_user.interventions.build(intervention_params)
    if @intervention.save
      redirect_to @intervention, notice: 'Demande d\'intervention créée avec succès.'
    else
      render :new
    end
  end

  private

  def intervention_params
    params.require(:intervention).permit(:work_type, :description, :image)
  end
end
