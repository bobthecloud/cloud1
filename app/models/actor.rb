class Actor < ActiveRecord::Base
  attr_accessible :dob, :gender, :name
  has_many :dvd_actor
  has_many :dvds, :through => :dvd_actor
  GENDER_TYPES = ["Mail", "Female", "Other"]

end
