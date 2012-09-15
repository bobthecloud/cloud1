class Dvd < ActiveRecord::Base
  attr_accessible :asin, :date, :name, :summary, :dvd_actor
  has_many :dvd_actor
  has_many :actors, :through => :dvd_actor
  has_one  :directors

  attr_accessor :dvd_actor
  after_save :update_actors

  private 

  def update_actors
    actors.delete_all
    selected_actors = dvd_actor.nil? ? [] : dvd_actor.keys.collect{|id| Actor.find_by_id(id)}
    selected_actors.each {|actor| self.actors << actor}
  end

end
