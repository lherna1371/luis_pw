class ListingController < ApplicationController
  protect_from_forgery with: :exception
  skip_before_filter  :verify_authenticity_token
  
  
  def show 
#   	may be used to list listing for booking?
  end 
  
  
  def search 
  	start_time =  params['listing']['time_start'].to_i
  	end_time =  params['listing']['time_end'].to_i
  	@search_result = Listing.booking_listing(start_time, end_time)
  	if @search_result.length != 0
	    respond_to do |format|
	        format.json { render :json => @search_result.first }
		end
	end  
  end 
  
  
end 