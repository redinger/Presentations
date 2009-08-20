class CommandsController < ApplicationController
  def new
  end
  
  def create
    Command.create! params[:command]
    redirect_to commands_path
  end
  
  def index
    @commands = Command.paginate(:page => params[:page], :order => 'reference_id desc')
  end
end