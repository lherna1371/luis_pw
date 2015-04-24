class Listing < ActiveRecord::Base
  has_many :bookings

  def self.booking_listing(start_time, end_time)
  	hour_count = (end_time - start_time)/60 
  	Listing.where("min_parking_hours <= ? AND available >= ? AND active = ?", hour_count, 1, true).order("price_per_hour asc")
#   	may want to verify listings are found withing this method as opposed to 'search' in controller, may want to refactor... 
  end 

end
