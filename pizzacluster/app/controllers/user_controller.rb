class UserController < ApplicationController
	def new
		if session[:user_id]
			redirect_to root_path
		end
	end

	def create
		user = User.new(user_params)

		if user.save!
			flash[:alert] = "User successfully created!"
			redirect_to login_path

		else
			flash[:alert] = "User could not be created!"
			redirect_to root_path
		end

	end

	private

	def user_params
		params.require(:user).permit(:name,:lastname,
									:username,:email,:password,
									:password_confirmation)
	end

end
