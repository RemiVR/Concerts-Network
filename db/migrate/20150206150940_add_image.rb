class AddImage < ActiveRecord::Migration
  	def self.up
    	add_attachment :concerts, :logo
  	end
  	def self.down
    	remove_attachment :concerts, :logo
		end
	end

