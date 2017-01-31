dial_book = {
  "newyork" => "212",
  "newbrunswick" => "712",
  "jacksonville" => "904",
  "titusville" => "312",
  "orlando" => "407",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301"
}

## method to display city names
def get_city_names(somehash)
 somehash.each { |k,v| puts k } 
end  
## method to get area code, dial_book and the city name
def get_area_code(somehash, key)
  # return the value based on the passed in key
  somehash[key]
  
end

loop do 
  print "Do you want to lookup an area code based on city name? (Y/N): "
  answer = gets.chomp.upcase
  # break if answer other than Y 
  if answer != "Y"
    break
  end
  puts "Which city do you want the area code for? "
  ## display city names
  get_city_names(dial_book) 
  print "Enter your selection: "
  prompt = gets.chomp.downcase
  ## check to see if the hash includes the prompt value
  if dial_book.include?(prompt) 
    puts "The area code for #{prompt} is: #{get_area_code(dial_book, prompt)}"
  else
    puts "You entered a city name #{prompt} not in the dictionary."
  end
end
