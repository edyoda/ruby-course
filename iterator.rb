=begin
Iterators


each 


map 


collect


Note :   No differnece between map and collection 
each returns the given collection itself
map will return the operated values



Block 




do ... end

{   ... }

=end



def hello(a, b) 
  c = a + b
  yield(c)  if block_given?
  puts "I am hello"
end
=begin
hello(10, 20) do |x|
        puts "I am a block and value is " + x.to_s 
      end

=end




=begin
SYNTAx:

collection.each/map/collect {| object|  logic}


OR 

collection.each/map/collect do | object|  
  logic
end 
=end


x = [1,2,3,4].collect do | i |
    i * 2
end

p x



{name: "weinvest", address: "hsr"}.each do | _ , value|
  puts "----------#{value}"
end
