class ReadingsController < ApplicationController
  def index
    @readings = Reading.paginate(:page => params[:page], :order => ['reference_id desc'])
  end
end
