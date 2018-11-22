#MIXIN
#Note :
  # modules looks exactly like class.
  # but modules can not be inherited, they can only be
  # extended or included.
  # One can not create the objects of module.
  # include gives instance method whereas extend gives
  # class method

module A
  def p1
    puts "From module A as p1"
  end
end

module B
  def p2
    puts "From module B as p2"
  end
end

class C
  include A
  extend B
  def p3
    puts "From class C as p3"
  end
end


c = C.new
c.p3
c.p1
C.p2
