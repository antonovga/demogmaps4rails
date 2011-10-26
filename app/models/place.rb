class Place < ActiveRecord::Base
  acts_as_gmappable :check_process => :prevent_geocoding,
                   :address => "address", :normalized_address => "address",
                   :validation => false,
                   :msg => "Sorry, not even Google could figure out where that is"

 def prevent_geocoding
    (self.lat.blank? && self.lng.blank?)
 end

 def gmaps4rails_title
    "title  here #{self.name}"
 end


end
