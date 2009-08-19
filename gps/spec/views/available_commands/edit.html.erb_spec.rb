require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/available_commands/edit.html.haml" do
  before(:each) do
    assigns[:available_command] = @available_command = stub_model(AvailableCommand,
      :new_record? => false
    )
  end

  it "renders the edit available_command form" do
    render

    response.should have_tag("form[action=#{available_command_path(@available_command)}][method=post]") do
    end
  end
end
