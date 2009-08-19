class Command < ActiveRecord::Base
  belongs_to :device
  validates_presence_of :device
end
