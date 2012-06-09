class Registration < ActiveRecord::Base
  attr_accessible :event_id, :volunteer_id
  
  belongs_to :volunteer
  belongs_to :event
  
  def self.from_volunteers_followed_by(volunteer)
     followed_volunteer_ids = "SELECT followed_id FROM relationships
                              WHERE follower_id = :volunteer_id"
         where("volunteer_id IN (#{followed_volunteer_ids}) OR volunteer_id = :volunteer_id", 
               volunteer_id: volunteer.id)
  end
  
  
end
