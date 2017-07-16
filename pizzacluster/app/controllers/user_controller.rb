class UserController < ApplicationController
	def new
	end

	def create
		user = User.new(user_params)
		#@user.name = params[:name]
		#@user.lastname = params[:lastname]
		#@user.username = params[:username]
		#@user.email = params[:email]
		#@user.password = params[:password]
		




		if user.save!
			flash[:alert] = "User successfully created!"
			redirect_to root_path

		else
			flash[:alert] = "User could not be created!"
			redirect_to login_path
		end

	end

	private

	def user_params
		params.require(:user).permit(:name,:lastname,
									:username,:email,:password,
									:password_confirmation)
	end

end
