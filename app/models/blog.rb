class Blog < ActiveRecord::Base
  attr_accessible :contents, :date, :title
end
