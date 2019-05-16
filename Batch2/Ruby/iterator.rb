each
map
collect

syntax :

collection.each do | block_object |
   logic
end

or
collection.each { | block_object |
   logic
}


array = %w( 1 2 3 4 5 6 7)

result = array.collect do | i |
  i.to_i
end
