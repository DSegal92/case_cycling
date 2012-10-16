class Position < ActiveRecord::Base
  attr_accessible :title, :position_id
  belongs_to :officer
end
