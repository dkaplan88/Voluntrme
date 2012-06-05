class RelationshipsController < ApplicationController
  # before_filter :signed_in_volunteer

  def create
    @volunteer = Volunteer.find(params[:relationship][:followed_id])
    Volunteer.find_by_id(session[:volunteer_id]).follow!(@volunteer)
    respond_to do |format|
      format.html { redirect_to @volunteer }
      format.js
    end
  end

  def destroy
    @volunteer = Relationship.find(params[:id]).followed
    Volunteer.find_by_id(session[:volunteer_id]).unfollow!(@volunteer)
    respond_to do |format|
      format.html { redirect_to @volunteer }
      format.js
    end
  end
end