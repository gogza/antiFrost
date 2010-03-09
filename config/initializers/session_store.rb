# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_antiFrost_session',
  :secret      => '92b57ff9cd6a4af9f0a1176bef6cd42d842a663c9db08dffe00c1961049bd4d7c8717c8e4780fb204ce007f23122a110943b16488b6cefe418fd219c679d19e5'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
