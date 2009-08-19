require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/available_commands/new.html.haml" do
  before(:each) do
    assigns[:available_command] = stub_model(AvailableCommand,
      :new_record? => true
    )
  end

  it "renders new available_command form" do
    render

    response.should have_tag("form[action=?][method=post]", available_commands_path) do
    end
  end
end
