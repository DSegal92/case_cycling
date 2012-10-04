class Member < ActiveRecord::Base
  attr_accessible :bio, :collegeCategory, :isRacer, :majors, :minors, :name, :picture, :standing, :usacCategory, :discipline_ids
  has_and_belongs_to_many :disciplines

  validates_presence_of :name, :standing, :discipline_ids
  def getTypes
  	types = ["Road","Track","Cross","Mountain"]
  end

end
