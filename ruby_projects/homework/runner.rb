## pp is pretty print 
require 'pp'
# use the user.rb file relative to this file (same path, same folder)
require_relative 'user'

# Create a new user object
user = User.new("test2@email.com", "Joe")
# Pretty print the user object
pp user
# Save the user object
user.save



