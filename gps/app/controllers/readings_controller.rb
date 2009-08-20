class ReadingsController < ApplicationController
  def index
    @readings = Reading.paginate(:page => params[:page], :order => ['updated_at desc'])
  end
end
