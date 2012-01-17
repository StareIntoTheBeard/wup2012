class MainController < ApplicationController
	before_filter :nav_path
	def index
		# Not really used..
	end

	def view
		
	end

	def edit

	end

private

  before_filter :instantiate_controller_and_action_names
 
	def instantiate_controller_and_action_names
	    @current_action = action_name
	    @current_controller = controller_name
	end

	def nav_path
		@nav_path = params[:id]
	end
end
