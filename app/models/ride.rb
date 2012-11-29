class Ride < ActiveRecord::Base
  attr_accessible :location, :time, :discipline, :distance, :pace, :recurring, :name

  def getTypes
  	types = ["Road", "Track", "Cross", "Mountain"]
  end

  def getPace
  	pace = ["A", "B", "Recovery", "A & B"]
  end

end
