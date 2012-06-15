class LandingsController < ApplicationController
  layout "landing"
  def index
    @event= Event.all
  end
end