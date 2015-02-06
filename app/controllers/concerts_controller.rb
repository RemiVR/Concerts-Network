class ConcertsController < ApplicationController
	def index
		@concert = Concert.all
		@today_concert = Concert.where(date: Date.today.beginning_of_day..Date.today.end_of_day).order("created_at")
		@upcoming_concerts = Concert.where("date > ?", Date.today).order("created_at")
	end
	def show
		@concert = Concert.find(params[:id])
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
