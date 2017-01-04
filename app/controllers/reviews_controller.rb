class ReviewsController < ApplicationController
  before_action :set_course
  before_action :authenticate_user!

  def new
    @review = Review.new(course: @course)
  end

  def create
    @review = current_user.reviews.build(review_params)
    @review.course = @course
    @review.save
    redirect_to @course
  end

  private
    def set_course
      @course = Course.find(params[:course_id])
    end

  def review_params
    params.require(:review).permit(:comment, :rating)
  end

end
