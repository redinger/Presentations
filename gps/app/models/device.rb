class Device < ActiveRecord::Base
  has_many :readings
  
  def last_reading
    readings.last
  end
end
