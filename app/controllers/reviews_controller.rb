class ReviewsController < ApplicationController
  before_action :set_review, only: %i[ show edit update destroy ]

  # GET /reviews/new
  def new
    @property = Property.find(params[:property_id])
  end

  # POST /reviews or /reviews.json
  def create
    @property = Property.find(params[:property_id])
    @review = @property.reviews.new(review_params)
    @review.user_id = current_user.id

      if @review.save
        redirect_to @property
      else
        render :new, status: :unprocessable_entity
      end
  end

  # DELETE /reviews/1 or /reviews/1.json
  def destroy
    @review.destroy

    respond_to do |format|
      format.html { redirect_to reviews_url, notice: "Review was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def review_params
      params.require(:review).permit(:body, :cleanliness_rating, :host_rating, :location_rating, :check_in_rating, :value_rating)
    end
end
