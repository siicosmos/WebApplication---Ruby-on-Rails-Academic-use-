class SessionController < ApplicationController
	def new
	end

	def authenticate
		user = User.where("username = ? or email = ?", params[:session][:uid],params[:session][:uid] ).first

		if user && user.authenticate(params[:session][:password])
			@session = Session.new {user.id}
			if @session.save
				redirect_to root_path
			else
				flash[:alert] = "There was an error logging in, please try again..."
				redirect_to 'login', :via => 'GET'
			end
		else
			flash[:alert] = "Wrong username or password!"
			redirect_to 'login', :via => 'GET'
		end

	end

end
