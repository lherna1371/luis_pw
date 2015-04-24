class Location < ActiveRecord::Base
	  has_many :listings
	  belongs_to :seller

end 