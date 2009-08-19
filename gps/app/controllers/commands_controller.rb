class CommandsController < ApplicationController
  def new
  end
  
  def create
    Command.create! params[:command]
    redirect_to commands_path
  end
  
  def index
  end
end