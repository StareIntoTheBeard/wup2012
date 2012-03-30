class MainController < ApplicationController
	before_filter :nav_path
	def index
		# Not really used..
	end

	def view
		
	end

	def edit

	end

	def collaborator

	end

private

  before_filter :instantiate_controller_and_action_names
  # before_filter :authenticate, :only => [:partners]
 
	def instantiate_controller_and_action_names
	    @current_action = action_name
	    @current_controller = controller_name
	end

	def nav_path
		if params[:id] == 'Collaborator'
			redirect_to 'http://collaborator.winduppixel.com', :status => :moved_permanently
		elsif params[:id] == 'Web_Presence'
			redirect_to '/'
		elsif params[:id] == 'Communication'
			redirect_to '/'
		elsif params[:id] == 'Planning'
			redirect_to '/'
		else
		@nav_path = params[:id]
		end
	end

	# def authenticate
	# 	authenticate_or_request_with_http_basic "Wind Up Pixel Partners" do |user_name, password|
	# 		user_name == 'sdfhjsdhfjsdhfsjdhf' && password == 'sdfsdjkjsdjfksdf'
		# end
	# end
end
