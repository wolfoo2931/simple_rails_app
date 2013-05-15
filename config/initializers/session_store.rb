# Be sure to restart your server when you modify this file.

Simple::Application.config.session_store :redis_store, :servers => APP_CONFIG[:redis].merge({:db => 0, :namespace => 'sessions'})

#Simple::Application.config.session_store :cookie_store, key: '_simple_session'

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rails generate session_migration")
# Simple::Application.config.session_store :active_record_store
