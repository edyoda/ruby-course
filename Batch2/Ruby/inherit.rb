class A
  def p1
    puts "I am from A as p1"
  end
  # remove_method :p1, if: Proc.new {false}
end

class B < A
  def p1
    puts "I am from B as p1"
  end
  def p2
    puts "I am from B as p1"
  end
  undef_method :p1
end

r = B.new
r.p1
