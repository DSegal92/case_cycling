class StaticPagesController < ApplicationController
  def home
  	@rides = Ride.find(:all, :order => "time DESC")
  	@events = Event.find(:all, :order => "date DESC").first(3)
  end
end
