class StaticPagesController < ApplicationController
  def home
  	@rides = Ride.find(:all)
  	@events = Event.find(:all)
  end
end
