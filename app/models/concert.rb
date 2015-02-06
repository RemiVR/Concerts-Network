class Concert < ActiveRecord::Base
	validates :band, presence: true, uniqueness: true
	validates :venue, presence: true, uniqueness: true
	validates :city, presence: true
	validates :date, presence: true
	validates :price, numericality: true
	validates :description, length: {maximum: 100}

	has_attached_file :logo, styles: {:large => "500x500>", :thumb => "100x100>"}
  validates_attachment_content_type :logo, :content_type => /\Aimage\/.*\Z/
end

