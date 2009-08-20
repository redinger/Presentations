class DevicesController < ApplicationController
  def index
    respond_to do |format|
      format.html { @devices = Device.paginate(:page => params[:page]) }
      format.js do
        render :json => Device.paginate(:page => params[:page]).to_json(:methods => :last_reading)
      end
    end
  end
end
