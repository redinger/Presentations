class AvailableCommandsController < ApplicationController
  # GET /available_commands
  # GET /available_commands.xml
  def index
    @available_commands = AvailableCommand.all

    respond_to do |format|
      format.html # index.html.haml
      format.xml  { render :xml => @available_commands }
    end
  end

  # GET /available_commands/1
  # GET /available_commands/1.xml
  def show
    @available_command = AvailableCommand.find(params[:id])

    respond_to do |format|
      format.html # show.html.haml
      format.xml  { render :xml => @available_command }
    end
  end

  # GET /available_commands/new
  # GET /available_commands/new.xml
  def new
    @available_command = AvailableCommand.new

    respond_to do |format|
      format.html # new.html.haml
      format.xml  { render :xml => @available_command }
    end
  end

  # GET /available_commands/1/edit
  def edit
    @available_command = AvailableCommand.find(params[:id])
  end

  # POST /available_commands
  # POST /available_commands.xml
  def create
    @available_command = AvailableCommand.new(params[:available_command])

    respond_to do |format|
      if @available_command.save
        flash[:notice] = 'AvailableCommand was successfully created.'
        format.html { redirect_to(@available_command) }
        format.xml  { render :xml => @available_command, :status => :created, :location => @available_command }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @available_command.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /available_commands/1
  # PUT /available_commands/1.xml
  def update
    @available_command = AvailableCommand.find(params[:id])

    respond_to do |format|
      if @available_command.update_attributes(params[:available_command])
        flash[:notice] = 'AvailableCommand was successfully updated.'
        format.html { redirect_to(@available_command) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @available_command.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /available_commands/1
  # DELETE /available_commands/1.xml
  def destroy
    @available_command = AvailableCommand.find(params[:id])
    @available_command.destroy

    respond_to do |format|
      format.html { redirect_to(available_commands_url) }
      format.xml  { head :ok }
    end
  end
end
