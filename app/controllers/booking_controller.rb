class BookingController < ApplicationController


	def new 
		puts params
		@listing = Listing.where(id: params['id'])
	end 

end 