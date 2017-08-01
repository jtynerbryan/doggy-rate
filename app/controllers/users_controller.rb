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
		@dogs = Dog.where(user_id: @user.id)
	end

	def create
		@user = User.new(user_params)
		if @user.save
			session[:user_id] = @user.id
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
