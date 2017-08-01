class DogReviewsController < ApplicationController
	def index
		@dog_reviews = DogReview.all
	end

	def new
		@dog_review = DogReview.new
		@dog = Dog.find(params[:dog])
	end

	def create
		@dog = Dog.find(params[:dog])
		@user = User.find(session[:user_id])
		@dog_review = DogReview.create(dog_review_params)
		@dog.dog_reviews << @dog_review
		@user.dog_reviews << @dog_review
		@dog_review.save
		redirect_to dog_path(@dog)
	end

	def edit

	end

	def update

	end

	private

	def dog_review_params
		params.require(:dog_review).permit(:content)
	end
end
