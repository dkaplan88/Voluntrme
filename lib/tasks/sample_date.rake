namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_volunteers
    make_relationships
  end
end

def make_volunteers
 
  99.times do |n|
    name  = Faker::Name.name
    email = "example-#{n+1}@railstutorial.org"
    password  = "password"
    Volunteer.create!(name:     name,
                 email:    email)
  end
end

def make_relationships
  volunteers = Volunteer.all
  volunteer  = volunteers.first
  followed_volunteers = volunteers[2..50]
  followers      = volunteers[3..40]
  followed_volunteers.each { |followed| volunteer.follow!(followed) }
  followers.each      { |follower| follower.follow!(volunteer) }
 end