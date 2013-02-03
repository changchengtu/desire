class HomeController < ApplicationController
	
	def index
	end
	before_filter :authenticate_user!
	def new

		
	end

	def create
		@goal = Goal.new(params[:goal])
		@goal.save
		redirect_to home_path(current_user.id)
		
	end

	def show
		@allGoal = Goal.where(:user_id=>current_user).all
	end

	def update
	end
end
