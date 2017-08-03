class UserReviewsController < ApplicationController
	def index
		authenticate
		@user_reviews = UserReview.all
	end

	def new
		@user_review = UserReview.new
		@reviewee = User.find(params[:user])		
	end

	def create
		@reviewer = User.find(session[:user_id])
		@reviewee = User.find(params[:reviewee])
		@user_review = UserReview.create(user_params)
		@reviewer.reviews_as_reviewer << @user_review
		@reviewee.reviews_as_reviewee << @user_review
		@user_review.save

		@reviewee.burn_at_stake_if_neg_count_five
		@reviewee.save

		redirect_to user_path(@reviewee)
	end

	def show
		authenticate
		@user = user.find(params[:id])
		@owner = @user.user
	end


	private

	def user_params
		params.require(:user_review).permit(:content, :mean)
	end
end
