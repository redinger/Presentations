Given /^I am a user$/ do
  User.make(:email => 'obama@whitehouse.gov', :password => 'password')
end

Given /^I am logged in$/ do
  Given 'I am a user'
  And 'I am on the homepage'
  When 'I fill in "Email" with "obama@whitehouse.gov"'
  And 'I fill in "Password" with "password"'
  And 'I press "Login"'
end