Given /^I have a device$/ do
  Device.make(:name => 'My Device', :imei => 'the_imei')
end

Then /^I should see the device$/ do
  Then 'I should see "My Device"'
  Then 'I should see "the_imei"'
end