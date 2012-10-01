class Event < ActiveRecord::Base
  attr_accessible :date, :location, :name, :website, :discipline

    def getTypes
  	types = ["Road", "Track", "Cross", "Mountain"]
  end
end
