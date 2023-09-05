class ParticipationsController < ApplicationController

  def create
    @participation = Participation.new(participation_params)
    @activity = Activity.find(params[:activity_id])
    @participation.activity = @activity
    @participation.user = current_user
    @review = Review.new

    if @participation.save

      redirect_to my_dashboard_path, notice: 'Participation was successfully created.'
    else
      flash[:alert] = @participation.errors.messages[:participation_date]
      render 'activities/show', status: :unprocessable_entity
    end
  end

  def my_dashboard
    @participations = Participation.where(user: current_user)
    @activities = @participations.map{ |participation| participation.activity}
  end

  def destroy
    @participation = Participation.find_by(id: params[:id])
    if @participation.destroy
      redirect_to my_dashboard_path, notice: 'Participation was successfully cancelled.'
    end
  end

  private

  def participation_params
    params.require(:participation).permit(:participation_date)
  end


end
