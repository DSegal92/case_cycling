class StaticPagesController < ApplicationController
  def home

    @rides = Ride.find(:all).select{|g| (g.time.wday - Time.now.wday >= 0 || g.time.wday - Time.now.wday == -6)}
  	@events = Event.find(:all, :order => "date ASC").first(3)
  	@posts = Blog.find(:all, :order => "id DESC").first(2)
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

  def sponsorship_information
  end


end
