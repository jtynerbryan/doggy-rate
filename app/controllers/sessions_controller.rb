class SessionsController < ApplicationController
	def signin

	end

	def create
		user = User.find_by(name: params[:user][:name])

		authenticated = user.try(:authenticate, params[:user][:password])
        if authenticated
   	    	@user = user
   			session[:user_id] = @user.id
   			redirect_to user_path(@user)
   		else
   			redirect_to '/'
   		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to '/'
	end
end