require 'byebug'
str = "Welcome to Ruby classes"
str_array = str.downcase.split("")
x1 = str_array - [" "]
x2 = str_array.map {| i | i.gsub(/[a-z]/, "_")}

t = 0
loop do
  t += 1
  if str_array.count("") >= x1.count
    puts "WOW!, you have won the game"
    break
  elsif t > 100
    puts "You have finshed all your retries"
    break
  end
  puts "Enter your guess"
  user_input = STDIN.gets.chomp.downcase
  if str_array.include?(user_input)
    index = str_array.find_index(user_input)
    str_array[index] = ""
    x2[index] = user_input
    puts "Your guess was correct #{x2.join}"
  end
end
