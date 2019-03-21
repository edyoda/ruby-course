module A
  def p1(a, b)
    c = a + b
  end
end

class B
  include A # includes generates instance methods
  def p3
    56
  end
end


x = B.new
puts x.p3
puts x.p1(10, 30)



class C
  extend A  # extend gives class methods
  def p1
  end
  def y1
  end
  def self.y2
  end
end

puts C.p1(50, 150)
puts C.y2

c = C.new
c.y1
