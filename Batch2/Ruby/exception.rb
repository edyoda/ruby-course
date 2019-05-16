# [1,2,4,0,6,7,8].each do | i |
#   begin
#     puts 100/i
#   rescue Exception => e
#     puts e.message
#     puts "changing to value of i to 5"
#     i = 5
#     redo
#   ensure
#     puts "I am there"
#   end
# end

result = [1,2,4,0,6,7,8].map do | i |
    raise "Not valid input" if i <= 0
    100/i rescue "Hello"
end
p result
