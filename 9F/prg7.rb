$global = "Hello"
class A
  def p1
    $global + " From A of p1"
  end
  def p2
    $global + " From A of p2"
  end
end

class B
  def p3
    $global  + " From B of p3"
  end
end
a = A.new
b = B.new
puts a.p1
puts a.p2
puts b.p3
