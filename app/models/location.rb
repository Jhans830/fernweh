class Location < ActiveRecord::Base
  attr_accessible :address, :activity, :description, :latitude, :longitude
  geocoded_by :address
  after_validation :geocode

def gmaps4rails_infowindow
    "<b>#{location.address}</b><br /><i>#{location.description}</i><br/><br/>#{location.activity}<br />"
  end
     
end



