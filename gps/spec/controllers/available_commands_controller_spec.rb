require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe AvailableCommandsController do
  before(:each) do
    controller.stub!(:current_user) {User.make_unsaved}
  end

  def mock_available_command(stubs={})
    @mock_available_command ||= mock_model(AvailableCommand, stubs)
  end

  describe "GET index" do
    it "assigns all available_commands as @available_commands" do
      AvailableCommand.stub!(:find).with(:all).and_return([mock_available_command])
      get :index
      assigns[:available_commands].should == [mock_available_command]
    end
  end

  describe "GET show" do
    it "assigns the requested available_command as @available_command" do
      AvailableCommand.stub!(:find).with("37").and_return(mock_available_command)
      get :show, :id => "37"
      assigns[:available_command].should equal(mock_available_command)
    end
  end

  describe "GET new" do
    it "assigns a new available_command as @available_command" do
      AvailableCommand.stub!(:new).and_return(mock_available_command)
      get :new
      assigns[:available_command].should equal(mock_available_command)
    end
  end

  describe "GET edit" do
    it "assigns the requested available_command as @available_command" do
      AvailableCommand.stub!(:find).with("37").and_return(mock_available_command)
      get :edit, :id => "37"
      assigns[:available_command].should equal(mock_available_command)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created available_command as @available_command" do
        AvailableCommand.stub!(:new).with({'these' => 'params'}).and_return(mock_available_command(:save => true))
        post :create, :available_command => {:these => 'params'}
        assigns[:available_command].should equal(mock_available_command)
      end

      it "redirects to the created available_command" do
        AvailableCommand.stub!(:new).and_return(mock_available_command(:save => true))
        post :create, :available_command => {}
        response.should redirect_to(available_command_url(mock_available_command))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved available_command as @available_command" do
        AvailableCommand.stub!(:new).with({'these' => 'params'}).and_return(mock_available_command(:save => false))
        post :create, :available_command => {:these => 'params'}
        assigns[:available_command].should equal(mock_available_command)
      end

      it "re-renders the 'new' template" do
        AvailableCommand.stub!(:new).and_return(mock_available_command(:save => false))
        post :create, :available_command => {}
        response.should render_template('new')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested available_command" do
        AvailableCommand.should_receive(:find).with("37").and_return(mock_available_command)
        mock_available_command.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :available_command => {:these => 'params'}
      end

      it "assigns the requested available_command as @available_command" do
        AvailableCommand.stub!(:find).and_return(mock_available_command(:update_attributes => true))
        put :update, :id => "1"
        assigns[:available_command].should equal(mock_available_command)
      end

      it "redirects to the available_command" do
        AvailableCommand.stub!(:find).and_return(mock_available_command(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(available_command_url(mock_available_command))
      end
    end

    describe "with invalid params" do
      it "updates the requested available_command" do
        AvailableCommand.should_receive(:find).with("37").and_return(mock_available_command)
        mock_available_command.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :available_command => {:these => 'params'}
      end

      it "assigns the available_command as @available_command" do
        AvailableCommand.stub!(:find).and_return(mock_available_command(:update_attributes => false))
        put :update, :id => "1"
        assigns[:available_command].should equal(mock_available_command)
      end

      it "re-renders the 'edit' template" do
        AvailableCommand.stub!(:find).and_return(mock_available_command(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested available_command" do
      AvailableCommand.should_receive(:find).with("37").and_return(mock_available_command)
      mock_available_command.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the available_commands list" do
      AvailableCommand.stub!(:find).and_return(mock_available_command(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(available_commands_url)
    end
  end

end
