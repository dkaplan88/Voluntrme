class Event < ActiveRecord::Base
  attr_accessible :category, :description, :location, :name, :organization_id
  
  has_many :registrations
  has_many :volunteers, through: :registrations
  belongs_to :organization
  
end
