require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/available_commands/index.html.haml" do
  before(:each) do
    assigns[:available_commands] = [
      stub_model(AvailableCommand),
      stub_model(AvailableCommand)
    ]
  end

  it "renders a list of available_commands" do
    render
  end
end
