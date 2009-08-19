require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/available_commands/show.html.haml" do
  before(:each) do
    assigns[:available_command] = @available_command = stub_model(AvailableCommand)
  end

  it "renders attributes in <p>" do
    render
  end
end
