class RidesController < ApplicationController

	def index
		@rides = Ride.all
	end
	
	def show
		@ride = Ride.find(params[:id])
	end

	def new

	end

	def edit
		@ride = Ride.find(params[:id])
	end

	def create
		@ride = Ride.new(rides_params)	

		@ride.save
		redirect_to @ride
	end

	

	private
		def rides_params
			params.require(:rides).permit(:location, :distance)
		end
end
