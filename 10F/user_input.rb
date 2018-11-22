
file = File.open("user_input2", "a+")

loop do
 puts "Enter your name"
 name = STDIN.gets.chomp
 puts "Enter your address"
 address = STDIN.gets.chomp
 file.puts "#{name} #{address}"
 puts "To continue please enter yes otherwise type anything to terminate"
 response = STDIN.gets.chomp
 if not response.match(/yes/i)
   file.close
   break
 end
end
