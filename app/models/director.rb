class Director < ActiveRecord::Base
  attr_accessible :dob, :gender, :name
	belongs_to :dvds
end
