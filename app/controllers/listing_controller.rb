class ListingController < ApplicationController
  protect_from_forgery with: :exception
  skip_before_filter  :verify_authenticity_token
  
  
  def show 
#   	may be used to list listing for booking?
  end 
  
  
  def search 
  	puts params
  end 
  
  
end 