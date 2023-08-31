class ActivitiesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @activities = Activity.all
    @markers = @activities.geocoded.map do |activity|
      {
        lat: activity.latitude,
        lng: activity.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: { activity: activity })
      }
    end

    if params[:query].present?
      sql_subquery = "location ILIKE :query OR address ILIKE :query OR category ILIKE :query"
      @activities = @activities.where(sql_subquery, query: "%#{params[:query]}%")
    end

    if params[:where].present? && params[:where] != "all"
      @activities = @activities.where(location: params[:where])
    end
  end

  def show
    @activity = Activity.find(params[:id])

  end
end
