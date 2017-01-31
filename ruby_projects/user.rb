# module names usually end with able ie- Walk would be Walkable
module Destructable
  
  def destroy(anyobject)
    puts "I will destroy the object."
  end  
  
end  



# Class starts with camelcase with Upper first letter
class User
  # allows access to the method destroy in the module Destructable
  include Destructable
  
  ## attr_accessor is a ruby method that replaces the getter and setter method
  attr_accessor :name, :email
  # key initialze method
  # class starts with initialize method
  def initialize(name, email)
    # @ is an instance variable
    # exists as long as an object exists
    @name = name
    @email = email
  end
  # getter method to access the instance variable within a class for an object
  #def get_name
  #  @name
  #end  
  # setter method to set name 
  #def set_name=(name)  
  #  @name = name  
  #end
  
  # instance method, accessible within an instance object 
  def run
    puts "Hey #{name}, I'm running!"
  end
  # class method, as it uses self 
  def self.identify_yourself
    puts "Hey I am a class method"
  end 
  
end

# Buyer subclass inherits from User superclass using <
class Buyer < User
  # override User method run with this method
  def run 
    puts "Hey #{name}, I'n not running and I'm in the buyer class"
  end
end  

class Seller < User
 # inherits the User method run 
end

class Admin < User
 # inherits the User method run 
end  


# Instantiate a new object using Object.new
user = User.new('Kyle', "email@gmail.com")
#user1 = User.new('John')
#user2 = User.new('Kevin')

# See where it inherits from
# Method to lists out all the superclass from User
#puts User.ancestors

#puts user.name
puts "My user's name is is #{user.name} and his email is #{user.email}"
# calls the instance method 
user.run
user.name="John Schmoe"
user.email="johnschmoe@email.com"
puts "My user's new name is #{user.name} and his emai is #{user.email}"
user.run

buyer1 = Buyer.new("John Buyer", "johnbuyer@email.com")
buyer1.run
seller1 = Seller.new("John Seller", "johnseller@email.com")
seller1.run
admin1 = Admin.new("John Admin", "johnadmin@email.com")
admin1.run

#puts Buyer.ancestors

# call the class method with no need to instantiate an object
User.identify_yourself

user = User.new("New Kyle", "newemail@gmail.com")
user.destroy("myname")


