module X
  class A
     def p1
       "Hello I am p1"
     end
     def p2
       "Hello I am p2"
     end
  end
  class B
    def p2
      "Hello I am p3"
    end
  end
end

=begin
puts X::A.new.p1
puts X::A.new.p2
puts X::B.new.p3
=end

class Abc
   include X 
end


puts Abc::A.new.p1
puts Abc::B.new.p2
