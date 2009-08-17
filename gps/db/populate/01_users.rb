User.create_or_update(:id => 1,
  :email => "admin@#{APP_CONFIG['host_name']}",
  :password => "testing")
