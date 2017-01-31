# Working with json files, require json allows to use json methods
require 'json'

class User
 
  attr_accessor :email, :name, :permissions
 
  # * is a splat operator
  # splat allows to take in args and creates an array
  def initialize(*args)
    @email = args[0]
    @name  = args[1]
    # setting using class method
    @permissions = User.permissions_from_template
  end 
  
  # Used self, therefore a class method
  def self.permissions_from_template
    file = File.read 'user_permissions_template.json'
    # Creates a json object by loading in the file
    # nil at this time no options
    # symbolize_name allows for nice format
    JSON.load(file, nil, symbolize_name: true)
  end   
  
  def save
    # Create a json object using a hash
    self_json = {email: @email, name: @name, permissions: @permissions}.to_json 
    # Append the json object: self_json to the file: users.json
    open('users.json', 'a') do |file|
      file.puts self_json
    end
  end
   
  
  
  
end  