class DvdActor < ActiveRecord::Base
  attr_accessible :actor_id, :dvd_id
  belongs_to :dvd
  belongs_to :actor 
end
