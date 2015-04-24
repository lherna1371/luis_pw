require "../../config/environment"

Listing.all.each do |list|
	Seller.create(name: list.seller_name)
	Location.create(name: list.location_name, address: list.address, city: list.city)
end 