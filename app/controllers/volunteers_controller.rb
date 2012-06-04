class VolunteersController < ApplicationController
  
  def new
    redirect_to '/auth/facebook'
  end
  
  def create 
    auth = request.env["omniauth.auth"]
    user = Volunteer.where(:provider => auth['provider'], 
                       :uid => auth['uid']).first || Volunteer.create_with_omniauth(auth)
    session[:user_id] = user.id
    redirect_to root_url, :notice => "You're in. Now go change the world!"
  end
  
  def show
    @volunteer = Volunteer.find(params[:id])
  end
  
end