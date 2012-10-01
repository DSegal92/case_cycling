class Member < ActiveRecord::Base
  attr_accessible :bio, :collegeCategory, :isRacer, :majors, :minors, :name, :picture, :standing, :usacCategory
end
