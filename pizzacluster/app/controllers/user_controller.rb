class UserController < ApplicationController
	def new
	end

	def create
		@user = User.new
		@user.name = params[:name]
		@user.lastname = params[:lastname]
		@user.username = params[:username]
		@user.email = params[:email]
		@user.password = params[:password]




		if @user.save!
			flash[:notice] = "User successfully created!"
			redirect_to root_path

		else
			flash[:notice] = "User could not be created!"
			redirect_to root_path
		end

	end

end
