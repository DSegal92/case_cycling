class Ride < ActiveRecord::Base
  attr_accessible :location, :time, :discipline, :distance, :pace, :recurring

  def getTypes
  	types = ["Road", "Track", "Cross", "Mountain"]
  end

  def getPace
  	pace = ["A", "B", "Recovery"]
  end

end
