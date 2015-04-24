require "../../config/environment"

Listing.all.each do |list|
	new_location = Location.create(name: list.location_name, address: list.address, city: list.city)
	list.update_attributes(location_id: new_location.id)
	new_seller = Seller.create(name: list.seller_name)
	new_location.update_attributes(seller_id: new_seller.id)
end 


# are locations unique? same name... different address. can be refactored... validations