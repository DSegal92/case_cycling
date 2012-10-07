class Officer < ActiveRecord::Base
  attr_accessible :bio, :contact, :majors, :minors, :name, :picture, :position, :year

  def getPositions
  	positions = ["President", "Vice President", "Treasurer", "Road Race Coordinator", "Webmaster", "Safety Officer", "Sponsorship Coordinator"]
  end

end
