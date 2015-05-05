class SessionsController < ApplicationController

	def new
	end 

	def create
		user = User.find_by(username: params[:username])

		if user && user.authenticate(params[:password])
			session[:user_id] = user.user_id
			redirect_to "/"
		else
			@error = "Incorrect login information. Please Try again"
			render :new
		end		
	end	

	def destroy
		session.delete(:user_id)
		redirect_to '/'
	end	
end
