class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @housing =  Housing.find(params[:housing_id])

    @review.user = current_user
    @review.housing = @housing
    if @review.save
      redirect_to housing_path(@housing)
    else
      redirect_to housing_path(@housing), status: :unprocessable_entity
    end
  end


  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
