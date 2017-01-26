##print "Hello, enter in your first name: "
# set variable to input value 
##first_name = gets.chomp
##print "What is your last name? "
##last_name = gets.chomp
##puts "Welcome #{first_name} #{last_name}, to the analyzer!"
##puts "The length of your first name is #{first_name.length} characters long" 
##puts "The length of your last name is #{last_name.length} characters long" 
##puts "The reverse of your first name is #{first_name.reverse}"
##puts "The reverse of your last name is #{last_name.reverse}"
##puts "The reverse of your full name is #{first_name.reverse} #{last_name.reverse}"


## methods need to be before the actual use of the method
## multiply method
def multiply(first_number, second_number)
 ## ruby return is default without specifying
 first_number.to_f * second_number.to_f
end

def divide(first_number, second_number)
 ## ruby return is default without specifying
 first_number.to_f / second_number.to_f
end

def subtract(first_number, second_number)
 ## ruby return is default without specifying
 first_number.to_f - second_number.to_f
end

def mod(first_number, second_number)
 ## ruby return is default without specifying
 first_number.to_f % second_number.to_f
end

puts "What do you want to do? 1) multiply 2) divide 3) subtract 4) find remainder"
prompt = gets.chomp
print "Enter in your first number: "
first_number = gets.chomp
print "Enter in your second number: "
second_number = gets.chomp

if prompt == '1' 
 puts "You have chosen to multiply #{first_number} with #{second_number}"
 result = multiply(first_number, second_number)
elsif prompt == '2'
 puts "You have chosen to divide"
 result = divide(first_number, second_number)
elsif prompt == '3'
 puts "You have chosen to subtract"
 result = subtract(first_number, second_number)
elsif prompt == '4'
 puts "You have chosen to find the remainder"
 result = mod(first_number, second_number)
else
 puts "You have made an invalid chose" 
end  

puts "The result is: #{result}"