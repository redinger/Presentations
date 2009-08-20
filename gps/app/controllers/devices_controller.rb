class DevicesController < ApplicationController
  def index
    respond_to do |format|
      format.html { @devices = Device.paginate(:page => params[:page], :order => 'updated_at desc') }
      format.js do
        render :json => Device.paginate(:page => params[:page], :order => 'updated_at desc').to_json(:methods => :last_reading)
      end
    end
  end
end
