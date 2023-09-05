
class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @activity = Activity.find(params[:activity_id])
    @review.activity = @activity
    @review.user = current_user
    if @review.save
      redirect_to activity_path(@activity)
    else
        flash[:alert] = "Something went wrong."
        render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
