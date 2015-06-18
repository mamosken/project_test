class RoomsController < ApplicationController

	def destroy
		@room = Room.find(params[:id])
		@room.destroy
		redirect_to @room.apartment
	end
end
