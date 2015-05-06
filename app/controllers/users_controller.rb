class UsersController < ApplicationController

	before_action :set_user, only: [:show]

	def index
		@users = User.all
	end	

	def new
		@users = User.new
	end	

	def show
		@users = User.find(params[:id])
	end	

	def create 
		@users = User.new(user_params)

		if @users.save
			session[:user_id] = @users.id
			redirect_to @users, notice:"Account created"
		else
			# @error ="There was an issue while Signing up"
			render :new
		end		
	end	

	def update

	end	

	private

	def set_user
		@users = User.find(params[:id])
	end	

	def user_params
		params.require(:user).permit(:name, :username, :email, :password)
	end	

end
