class SessionsController < ApplicationController

	def new
	end 

	def create
		user_username = User.find_by(username: params[:username])
		user_email = User.find_by(email: params[:username]) 

		if user_username && user_username.authenticate(params[:password])
			session[:user_id] = user_username.id
			redirect_to "/"
		elsif user_username && user_username.authenticate(params[:password]) == false
			@error ="Unknown password for this username"
			render :new

		elsif user_email && user_email.authenticate(params[:password])
			session[:user_id] = user_email.id
			redirect_to "/"

		elsif user_email && user_email.authenticate(params[:password]) == false
			@error ="Unknown password for this email"
			render :new

		else 	
			@error="Unknown username or email"
			render :new
		end	
	end	

	def destroy
		session.delete(:user_id)
		redirect_to '/'
	end	
end
