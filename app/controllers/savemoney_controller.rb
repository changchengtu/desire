class SavemoneyController < ApplicationController

	def new
	end

	def create
		@state = State.new(params[:state])
                @state.save

		redirect_to home_path(current_user)
	end
end
