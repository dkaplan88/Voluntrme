class Event < ActiveRecord::Base
  attr_accessible :category, :description, :location, :name, :organization_id
  
  has_many :registrations
  has_many :volunteers, through: :registrations
  belongs_to :organization
  
  def self.from_volunteers_followed_by(volunteer)
    followed_volunteer_ids = "SELECT followed_id FROM realtionships WHERE follower_id = :volunteer_id"
   
    where("volunteer_id IN (#{followed_volunteer_ids}) OR volunteer_id = : volunteer_id", 
           volunteer_id: volunteer.id)
  end
end
