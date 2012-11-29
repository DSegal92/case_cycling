class StaticPagesController < ApplicationController
  def home

    @rides = Ride.find(:all).select{|g| (g.time.wday - Time.now.wday > 0)}
  	@events = Event.find(:all, :order => "date DESC").first(3)
  	@posts = Blog.find(:all, :order => "date DESC").first(2)
  	@carousel = Carousel.where(:enabled => true)
  end

  def sponsors
  end

  def error
  end


  def about
  end

  def clothing
  end


end
