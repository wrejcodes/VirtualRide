class RidesController < ApplicationController

	def index
		@rides = Ride.all
	end

	def new
	end

	def create
		@ride = Ride.new(rides_params)	

		@ride.save
		redirect_to @ride
	end

	def show
		@ride = Ride.find(params[:id])
	end

	private
		def rides_params
			params.require(:rides).permit(:location, :distance)
		end
end
