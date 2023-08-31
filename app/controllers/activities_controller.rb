class ActivitiesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @activities = Activity.all
    if params[:query].present?
      sql_subquery = "name ILIKE :query OR location ILIKE :query"
      @activitiess = @activitiess.where(sql_subquery, query: "%#{params[:query]}%")
    end
  end

  def show
    @activity = Activity.find(params[:id])
  end
end
