GC.start
before = GC.stat(:total_freed_objects)
before_allocation = GC.stat(:total_allocated_objects)
RT = []

(1..100000).each do | i |
   RT << "Hello".freeze
end

after = GC.stat(:total_freed_objects)
after_allocation = GC.stat(:total_allocated_objects)

puts "Freed   objects   allocation"
puts "        #{before}   #{before_allocation}"
puts "        #{after}   #{after_allocation}"
