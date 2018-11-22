# begin
#   code
# rescue
#   code
# end

# [1,2,3,0,4,5,6].each do | i |
#   begin
#     puts 100/i
#   rescue Exception => e
#     puts e.message
#     i = 2
#     retry
#   ensure
#     puts "I am present"
#   end
# end

begin
  puts "Enter your name, excluding admin and super"
  name = STDIN.gets.chomp
  raise "super and admin can't be taken as name" if name.match(/admin|super/)
rescue Exception => e
  puts e.message
  retry
end



begin
  code
rescue NoMethodError
  code
end





puts x = 100/0 rescue nil
puts x = 100/2 rescue nil
