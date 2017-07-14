class LoginController < ApplicationController

	def show
		
	end

	def reg
		@newUser = users.new(params)
	end

end
