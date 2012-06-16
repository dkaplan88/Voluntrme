class Event < ActiveRecord::Base
  attr_accessible :category, :description, :location, :name, :organization_id, :date, :contact_name, :phone
  
  has_many :registrations
  has_many :volunteers, through: :registrations
  belongs_to :organization
  
  acts_as_gmappable

   def gmaps4rails_address
     self.location
   end
   
   def gmaps4rails_infowindow
         # add here whatever html content you desire, it will be displayed when users clicks on the marker
     "<p>#{self.name}</p><p>#{self.organization.name}<p>#{self.date}</p><p>#{self.location}</p>
     <p><a href='#'>Get Directions</a></p>"
   end
end
  