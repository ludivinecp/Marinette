class Localisation < ActiveRecord::Base
#	attr_accessible :place, :lattitude, :longitude
	geocoded_by :place
	after_validation :geocode
end
