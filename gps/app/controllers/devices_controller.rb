class DevicesController < ApplicationController
  def index
    respond_to do |format|
      format.html { @devices = Device.all }
      format.js do
        render :json => Device.all.to_json(:methods => :last_reading)
      end
    end
  end
end
