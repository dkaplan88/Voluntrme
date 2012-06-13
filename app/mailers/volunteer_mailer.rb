class VolunteerMailer < ActionMailer::Base
  default from: "voluntrme@gmail.com"
  
  def confirmation_email(user)
    @user = user
    @url = "http://voluntr.me"
    mail :to => user.email, :subject => "Confirmation"
    
  end
end
