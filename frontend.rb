require 'http'


system "clear"
p "welcome to the gaming app!"
p "please choose your path"
p "1 - lottery"
p "2 - fortunes"
user_input = gets.chomp

# p user_input

if user_input == "1"
  # p "i am in the lotto place"
  response = HTTP.get("http://localhost:3000/lotto")
  p response.parse['winning_numbers']
elsif user_input == "2"
  # p "i am in the fortunes place"
  response = HTTP.get("http://localhost:3000/fortunes")
  p response.parse['fortune']
end



