class MainController < ApplicationController
	def index
		# Not really used..
	end

	def view
		@chong = params[:id]
	end

	def edit
		@chong = params[:id]
	end
end
