class A
  @@hello = 45
  def p1
    @@hello + 50
    @@hello = 60
  end
  def p2(a, b)
    @@hello + a + b
  end
end

a = A.new
a.p2(10, 30)
