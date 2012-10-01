class Ride < ActiveRecord::Base
  attr_accessible :location, :time, :discipline

   def getTypes
  	types = ["Road", "Track", "Cross", "Mountain"]
  end

end
