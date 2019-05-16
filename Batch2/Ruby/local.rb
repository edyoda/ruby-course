class A
  def p1
    a = 10
    b = 45
  end
  def p2(a, b)
    puts a
  end
end

a = A.new
a.p2(10, 30)
