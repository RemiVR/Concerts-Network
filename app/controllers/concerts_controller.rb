class ConcertsController < ApplicationController
	def index
		@concert = Concert.all
	end
	def new
		@concert = Concert.new
	end
	def create
		@concert = Concert.new concert_params
		if @concert.save
			redirect_to action: 'index', controller: 'concerts'
		else
			render 'new'
		end
	end
	private
	def concert_params
		params.require(:concert).permit(:name, :band, :venue, :city, :date, :price, :description)
	end
end
