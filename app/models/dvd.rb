class Dvd < ActiveRecord::Base
  attr_accessible :asin, :date, :name, :summary
end
