class Organization < ActiveRecord::Base
  attr_accessible :category, :contact, :location, :name, :phone, :website, :description
  
  has_many :events
  
end
