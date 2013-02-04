class HomeController < ApplicationController
	
	before_filter :authenticate_user!

	def index
		@allGoals = Goal.where(:user_id=>current_user)
		@separateGoalSum = State.where(:user_id=>current_user,:confirm=>true).select("forWhat").group("forWhat").sum(:howMuch) #sum up all money and group by goal
	end

	def new

		
	end

	def create
		@goal = Goal.new(params[:goal])
		@goal.save
		redirect_to home_path(current_user.id)		
	end

	def show

		allPeople = User.select("name, id").all    #pair position with value
                @person = Array.new
                allPeople.each do |user|
                        @person[user.id] = user.name
                end

		@allUnconfirm = State.where(:toWho=>current_user.id, :confirm=>false).all
		@allSave = State.where(:user_id=>current_user.id, :confirm=>true).all
		@allReceive = State.where(:toWho=>current_user.id, :confirm=>true).all
	end

	def update
		@confirmM = State.find(params[:id])
		@confirmM.update_attributes(:confirm=>true)
		
		redirect_to home_path(current_user)
	end

	def saveMoney		
                @id = params[:goal_id].to_i
		
		allPeople = User.select("name, id").all    #for choosing user
		@person = Array.new
		allPeople.each do |user|
			@person[user.id] = [user.name, user.id]
		end
        end

        def save
                @savemoney = State.new(params[:state])
                @savemoney.save

                redirect_to home_path(current_user)
        end
end
