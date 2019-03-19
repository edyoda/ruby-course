=begin
Arguments -
	Formal arguments
	Command line args

=end


class A
  def p1(x)
     x + 78   
  end
  def p2(x, y)
    x + y + 50 
  end
end

t = A.new
puts t.p1(40)
puts t.p2(40 , 50)
