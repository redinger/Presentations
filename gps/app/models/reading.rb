class Reading < ActiveRecord::Base
  belongs_to :device
  
  def device_name
    device.present? ? device.name : 'N/A'
  end
end
