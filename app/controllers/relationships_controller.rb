class RelationshipsController < ApplicationController
  # before_filter :signed_in_volunteer

  def create
    @volunteer = Volunteer.find(params[:relationship][:followed_id])
    current_volunteer.follow!(@volunteer)
    respond_to do |format|
      format.html { redirect_to @volunteer }
      format.js
    end
  end

  def destroy
    @volunteer = Relationship.find(params[:id]).followed
    current_volunteer.unfollow!(@volunteer)
    respond_to do |format|
      format.html { redirect_to @volunteer }
      format.js
    end
  end
end