class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def create
    @shop = Shop.find(params[:shop_id])
    @review = @shop.reviews.create(review_params.merge(user_id: current_user.id))
    if @review.save
      redirect_to shop_path(@shop)
    else
      flash[:alert] = "Couldn't create this review"
      render shop_path(@shop), status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :description)
  end
end
