class VolunteersController < ApplicationController
  # before_filter :signed_in_volunteer, 
  #                   only: [:index, :edit, :update, :destroy, :following, :followers]

  def following
     @title = "Following"
     @volunteer = Volunteer.find(params[:id])
     @volunteers = @volunteer.followed_volunteers.paginate(page: params[:page])
     render 'show_follow'
  end

  def followers
     @title = "Followers"
     @volunteer = Volunteer.find(params[:id])
     @volunteers = @volunteer.followers.paginate(page: params[:page])
     render 'show_follow'
  end
  
  def new
    redirect_to '/auth/facebook'
  end
  
  def create 
    auth = request.env["omniauth.auth"]
    volunteer = Volunteer.where(:provider => auth['provider'], 
                       :uid => auth['uid']).first || Volunteer.create_with_omniauth(auth)
    session[:volunteer_id] = volunteer.id
    redirect_to root_url, :notice => "You're in. Now go change the world!"
  end
  
  def show
    @volunteer = Volunteer.find(params[:id])
  end
  
  private
  
  
  def correct_volunteer
    @volunteer = Volunteer.find(params[:id])
    redirect_to (root_path) unless current_volunteer?(@volunteer)
  end
  
  def admin_volunteer
    redirect_to(root_path) unless current_volunteer.admin?
  end
end