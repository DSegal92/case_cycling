class StaticPagesController < ApplicationController
  def home
  	@rides = Ride.find(:all, :order => "time DESC").first(3)
  	@events = Event.find(:all, :order => "date DESC").first(3)
  end

  def sponsors
  end
end
