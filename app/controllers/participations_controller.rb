class ParticipationsController < ApplicationController
  def create
    @participation = Participation.new
    @participation.activity = Activity.find(params[:activity_id])
    @participation.user = current_user

    if @participation.save
      redirect_to activities_path, notice: 'Participation was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @participation = Participation.find_by(id: params[:id])
    @participation.destroy
    redirect_to activities_path, notice: 'Participation was successfully cancelled.'
  end
end
