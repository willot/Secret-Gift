class UsersController < ApplicationController

	def index
		@users = User.all
	end	

	def new
		@users = User.new
	end	

	def show
		@user = User.find(params[:id])
	end	

	def create 
		@user = User.new(xxxxxx)
		
		if @user.save
			session[:user_id] = @user.id
			redirect_to @user, notice:"Account created"
		else
			@error ="There was an issue while Signing up"
			render :new
		end		
		
	end	

end
