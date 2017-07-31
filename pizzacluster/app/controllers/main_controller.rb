class MainController < ApplicationController

	def show
	end

	def list
		render 'restaurants'
	end

	def staticAbout
		render 'about'
	end

	def staticContact
		render 'contact'
	end
end
