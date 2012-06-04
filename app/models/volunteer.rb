class Volunteer < ActiveRecord::Base
  attr_accessible :email, :first_name, :friends, :image, :last_name, :name,  :password, :phone_number, :provider, :uid
  
  # has_secure_password
  
  has_many :registrations
  has_many :events, through: :registrations
  
  def self.create_with_omniauth(auth)
      create! do |volunteer|
        volunteer.provider = auth['provider']
        volunteer.uid = auth['uid']
        if auth['info']
           volunteer.name = auth['info']['name'] || ""
           volunteer.email = auth['info']['email'] || ""
           volunteer_details = FbGraph::User.new(auth["info"]["nickname"], :access_token => auth["credentials"]["token"])
           volunteer_details = volunteer_details.fetch
           volunteer.friends = volunteer_details.friends
           volunteer.image = volunteer_details.picture
        end
    end
  end
  
end