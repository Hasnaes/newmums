class ParticipationsController < ApplicationController
  def create
    @participation = Participation.new
    @activity = Activity.find(params[:activity_id])
    @participation.activity = @activity
    @participation.user = current_user

    if @participation.save
      redirect_to activities_path, notice: 'Participation was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def my_dashboard
    @participations = Participation.where(user: current_user)
    @activities = @participations.map{ |participation| participation.activity}
  end

  def destroy
    @participation = Participation.find_by(id: params[:id])
    if @participation.destroy
      redirect_to activities_path, notice: 'Participation was successfully cancelled.'
    end
  end
end
