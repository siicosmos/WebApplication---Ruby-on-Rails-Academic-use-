class SessionController < ApplicationController
	def new
		if session[:user_id]
			redirect_to root_path
		end
	end

	def startsession
		user = User.where("username = ? or email = ?", params[:session][:uid],params[:session][:uid] ).first

		if user && user.authenticate(params[:session][:password])
			session[:user_id] = user.id;
			redirect_back fallback_location: root_path
		else
			flash[:alert] = "Wrong username or password!"
			redirect_back fallback_location: root_path
		end

	end

	def endsession
		if session[:user_id]
			session[:user_id] = nil;
			flash[:alert] = "You logged out successfully."
		else
			flash[:alert] = 'Cannot log out unless logged in!'
		end
			redirect_back fallback_location: root_path
	end
end
