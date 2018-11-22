class A
  attr_accessor :m
end

a = A.new
puts a
a.m='Hello'
puts a
puts a.m
# OR
# class A
#   attr_writer :m # setr method
#   attr_reader :m # getr method
# end
# OR
# class A
#   def m
#   end
#   def m=(str)
#   end
# end
