class Device < ActiveRecord::Base
  has_many :readings
  has_many :commands

  selectable
  
  def last_reading
    readings.last
  end
end
