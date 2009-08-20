class ReadingsController < ApplicationController
  def index
    @readings = Reading.paginate(:page => params[:page])
  end
end
