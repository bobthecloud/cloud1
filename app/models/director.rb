class Director < ActiveRecord::Base
  validates_presence_of  :name
  validates_uniqueness_of :name
  validates_presence_of  :gender
  attr_accessible :dob, :gender, :name
	belongs_to :dvds
	attr_accessor :dvds_id
end


