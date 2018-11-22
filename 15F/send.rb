class A
  def p1(*args)
    x = *args
    x.inject(:+)
  end
  def p2(*args)
    x = *args
    x.inject(:*)
  end
  def p3 *args
    x = *args
    x.inject(:-)
  end
  at_exit {puts "I am terminating now"}
  at_exit {puts "I am terminating now1"}
  at_exit {puts "I am terminating now2"}
end

a = A.new
A.instance_methods(false).each do | i |
  puts a.send(i, 1,2,3,4)
end
