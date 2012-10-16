class Officer < ActiveRecord::Base
  attr_accessible :bio, :contact, :majors, :minors, :name, :picture, :position, :year, :position_id
  has_many :positions

end
