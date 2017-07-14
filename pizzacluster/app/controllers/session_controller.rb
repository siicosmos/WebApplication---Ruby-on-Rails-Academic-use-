class SessionController < ApplicationController
	def new
	end

	def authenticate
		user = User.find_by username: :uid
		unless user
			user = User.find_by email: :uid
		end

		if user && user.authenticate(:password)
			@session = Session.new user.id
			if @session.save
				redirect_to root_path
			else
				flash[:alert] = "There was an error logging in, please try again..."
				redirect_to 'login'
			end
		else
			flash[:alert] = "Wrong username or password!"
			redirect_to 'login'
		end

	end

end
