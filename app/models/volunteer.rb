class Volunteer < ActiveRecord::Base
  attr_accessible :email, :first_name, :friends, :image, :last_name, :name,  :password, :phone_number, :provider, :uid
  
  # has_secure_password
  
  has_many :registrations
  has_many :events, through: :registrations
  
  has_many :relationships, foreign_key: "follower_id", dependent: :destroy
  has_many :followed_volunteers, through: :relationships, source: :followed
  
  has_many :reverse_relationships, foreign_key: "followed_id", class_name: "Relationship", dependent: :destroy
  has_many :followers, through: :reverse_relationships, source: :follower
  
  def following?(other_volunteer)
    relationships.find_by_followed_id(other_volunteer.id)
  end
  
  def follow!(other_volunteer)
    relationships.create!(followed_id: other_volunteer.id)
  end
  
  def unfollow!(other_volunteer)
    relationships.find_by_followed_id(other_volunteer.id).destroy
  end
  
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