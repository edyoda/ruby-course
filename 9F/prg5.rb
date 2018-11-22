class A
  def initialize(y)
    @y = y
  end
  def p1
    @x = "Hello World!"
  end
  def p2
    @x + @y
  end
end

r = A.new("EXTRA")
r.p1
puts r.p2
