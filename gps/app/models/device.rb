class Device < ActiveRecord::Base
  has_many :readings
end
