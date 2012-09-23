class Actor < ActiveRecord::Base
  attr_accessible :dvd_actor, :dob, :gender, :name
  has_many :dvd_actor
  has_many :dvds, :through => :dvd_actor
 attr_accessor :dvd_actor
  after_save :update_dvds
  
  GENDER_TYPES = ["Mail", "Female", "Other"]

  private 
  def update_dvds
    dvds.delete_all
    selected_dvds = dvd_actor.nil? ? [] : dvd_actor.keys.collect{|id| 
    	puts "id = #{id}"
    		Dvd.find_by_id(id)}
    selected_dvds.each {|dvd| self.dvds << dvd}
  end

  
end

 
 