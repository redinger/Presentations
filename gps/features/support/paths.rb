module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in webrat_steps.rb
  #
  def path_to(page_name)
    case page_name
    
    when /the homepage/
      '/'

    when /^the available commands index page$/i
      available_commands_path

    when /^the commands index page$/i
      commands_path

    when /^the devices index page$/i
      devices_path

    when /^the new user session page$/i
      new_user_session_path

    when /^the readings index page$/i
      readings_path

    else
      raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
        "Now, go and add a mapping in #{__FILE__}"
    end
  end
end

World(NavigationHelpers)
