Given /^I have an available command$/ do
  AvailableCommand.make(:name => 'My Command', :command => 'command_string')
end

Then /^I should see the available command$/ do
  Then 'I should see "My Command"'
  Then 'I should see "command_string"'
end