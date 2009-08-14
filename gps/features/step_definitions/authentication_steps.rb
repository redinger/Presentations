Given /^I am a user$/ do
  User.make(:email => 'obama@whitehouse.gov', :password => 'password')
end
