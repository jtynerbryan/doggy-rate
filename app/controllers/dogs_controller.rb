class DogsController < ApplicationController
	def index
		authenticate
		@dogs = Dog.all
	end

	def new
		@dog = Dog.new
	end

	def create
		@dog = Dog.new(dog_params)
		@dog.user_id = session[:user_id]
		@dog.save
		redirect_to dog_path(@dog)
	end

	def show
		authenticate
		@dog = Dog.find(params[:id])
		@owner = @dog.user
	end


	private

	def dog_params
		params.require(:dog).permit(:name, :breed, :picture)
	end

end
