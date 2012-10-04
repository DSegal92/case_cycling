class Discipline < ActiveRecord::Base
	attr_accessible :name, :member_ids
	
	has_and_belongs_to_many :members
	
  	
end
