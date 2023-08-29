class ParticipationsController < ApplicationController
  before_action :set_activity, except: :my_dashboard

  def index
    @activities = Activity.all
    if params[:query].present?
      sql_subquery = "name ILIKE :query OR location ILIKE :query"
      @activities = @activities.where(sql_subquery, query: "%#{params[:query]}%")
    end
  end

  def show
    @activity = Activity.find(params[:id])
    @participation = participation.new
    @markers = [
      {
        lat: @activity.latitude,
        lng: @activityt.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: { activity: @activity }),
        marker_html: render_to_string(partial: "marker", locals: { activity: @activity }),
      }
    ]
  end

  def my_dashboard
    @participations = Participation.where(user: current_user)
  end


  def destroy
    @activity = Activity.find_by(id: params[:id])
    @activity.destroy
    redirect_to activities_path
  end
end

  private

  def set_activity
    @activity = Activity.find(params[:activity_id])
  end

  def participation_params
    params.require(:participation).permit(:start_date, :end_date)
  end
end
