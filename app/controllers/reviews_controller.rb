class ReviewsController < ApplicationController
  def new
    @activity = Activity.find(params[:activity_id])
    @review = Review.new
  end
end
