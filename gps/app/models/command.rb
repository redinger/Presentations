class Command < ActiveRecord::Base
  belongs_to :device
  validates_presence_of :device
  
  def device_name
    device.present? ? device.name : 'N/A'
  end
end
