=begin
begin
  code 
rescue Exception => e
  puts e.message
ensure 
  code # this runs in all the case 
end
=end

=begin
[1, 2, 3, 0, 4, 5].each do | i |
  begin
    puts 100/i
  rescue Exception => e
    i = 50
    puts e.message
    retry  
  ensure 
    puts "I am enjoying :)"
  end
end

=end


# raise your own exception

[1,2,3,4,"hello", 4,5].each do | i |
  begin 
    raise "Not valid object type/class when is #{i}" if i.class == String
    100/i
  rescue Exception => e
    puts e.message 
  end
end


# handle in one line

x = 100/0 resuce nil
