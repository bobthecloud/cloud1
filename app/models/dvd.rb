class Dvd < ActiveRecord::Base
  validates_presence_of  :name
  validates_uniqueness_of :name
  attr_accessible :asin, :date, :name, :summary, :dvd_actor, :director_id
  has_many :dvd_actor
  has_many :actors, :through => :dvd_actor
  has_one  :director
  attr_accessor :dvd_actor
  
  after_save :update_actors
  
  def asinurl
  #Should we move this out to yaml or some other external config file?
   "http://www.amazon.com/s/ref=nb_sb_noss?url=search-alias%3Dmovies-tv&field-keywords=#{self.asin}"
  end
  private 
  def update_actors
    actors.delete_all
    selected_actors = dvd_actor.nil? ? [] : dvd_actor.keys.collect{|id| Actor.find_by_id(id)}
    selected_actors.each {|actor| self.actors << actor}
    
  end
end
