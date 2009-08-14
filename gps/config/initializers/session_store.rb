# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_gps_session',
  :secret      => '44b2d953a2b983b26f3b2336453834ef3508f097124857c1462bd382f44e17a03eff9307d6634ba4cc0aa005e6d507878cbbb827f86f71745a2926258a9dc469'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
