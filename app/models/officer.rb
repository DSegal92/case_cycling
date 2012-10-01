class Officer < ActiveRecord::Base
  attr_accessible :bio, :contact, :majors, :minors, :name, :picture, :position, :year

  def getPositions
  	positions = ["President", "Vice President", "Treasurer", "Road Race VP", "Webmaster", "Safety Officer"]
  end

end
