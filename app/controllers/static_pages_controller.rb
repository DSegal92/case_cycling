class StaticPagesController < ApplicationController
  def home
  	@rides = Ride.find(:all, :order => "time DESC").first(3)
  	@events = Event.find(:all, :order => "date DESC").first(3)
  	@posts = Blog.find(:all).first(2)
  end

  def sponsors
  end

  def error
  end


end
