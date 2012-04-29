class Point < ActiveRecord::Base
  validates_numericality_of :lat, :lon
end
