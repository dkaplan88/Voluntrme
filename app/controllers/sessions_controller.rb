class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = Volunteer.find_by_email(params[:email])
    if user
      if user.authenticate(params[:password])
        session[:volunteer_id] = user.id
        redirect_to root_url, notice: "Logged in!"
      else
        redirect_to root_url, notice: "Invalid email or password"
      end
    else
      redirect_to root_url, notice: "Bad Email!"
    end
  end
  
  def destroy
    session[:volunteer_id] = nil
    redirect_to root_url
  end
end
