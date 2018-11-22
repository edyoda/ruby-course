#local

class A
  def p1
    a = 9
  end

  def p2
    a = p1
  end
end

z = A.new
puts z.p1
puts z.p2
