#write a program to take the user name and email until user ask to terminate typing terminate


loop do 
  puts "Enter name"
  name = STDIN.gets.chomp
  puts "Enter your address"
  address = STDIN.gets.chomp
  puts "my name is #{name} and address is #{address}"
  puts "to continue enter any char otherwise termiante to termiante"
  stop = STDIN.gets.chomp
  if stop.match(/termiante/i)
    puts "Stopping .........."
    break
  end 
end

