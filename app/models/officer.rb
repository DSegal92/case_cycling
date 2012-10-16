class Officer < ActiveRecord::Base
  attr_accessible :bio, :contact, :majors, :minors, :name, :picture, :position, :year, :position_id
  has_many :positions

  def getPositions
  	types = ["President","Vice President","Treasurer","Safety Officer", "Road Race Coordinator", "Sponsorship Coordinator", "Webmaster"]
  end
end
