User.create_or_update(:id => 1,
  :email => "admin@#{APP_CONFIG['host_domain']}",
  :password => "testing")
