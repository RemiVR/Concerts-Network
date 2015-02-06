class Concert < ActiveRecord::Base
	validates :band, presence: true, uniqueness: true
	validates :venue, presence: true, uniqueness: true
	validates :city, presence: true, uniqueness: true
	validates :date, presence: true
	validates :price, numericality: true
	validates :description, length: {maximum: 100}
end

