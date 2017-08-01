class UsersController < ApplicationController
	def index
		authenticate
		@users = User.all
	end

	def new
		@user = User.new
	end
	
	def show
		authenticate
		@user = User.find(params[:id])
	end

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to user_path(@user)
		else
			render :new
		end
	end

	def edit
		authenticate
		@user = User.find(params[:id])
	end

	def update

	end

	private

	def user_params
		params.require(:user).permit(:name, :email, :password)
	end
end
