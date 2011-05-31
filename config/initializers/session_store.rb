# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_album_session',
  :secret      => '1e3c6eacb6a275e8310192ec7ecf5f60a256f153181d9ba98dc503014336c479c944808f427d064ee07f71c21af36801245fc4e71e085f9afb67242791c7e813'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
