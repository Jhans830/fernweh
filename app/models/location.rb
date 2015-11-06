class Location < ActiveRecord::Base
  attr_accessible :address, :activity, :description, :latitude, :longitude
  geocoded_by :address
  after_validation :geocode
     
end



