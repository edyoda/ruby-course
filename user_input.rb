loop do
  puts "Enter your name"
  user = STDIN.gets.chomp
  puts "My name is #{user}"
  puts "To continue press yes other anything to terminate"
  x = STDIN.gets.chomp
  unless x.match(/yes/i)
    break
  end
end
