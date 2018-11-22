class A
  @@name = "World"
  def p1
    @@name
  end
  def p2
    "Hello " + @@name
  end
end


r = A.new
puts r.p1
puts r.p2
