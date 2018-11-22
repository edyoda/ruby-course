class A
  def p1
  end
  def self.p2
  end
end

r = A.new
puts "All the class methods are #{A.methods(false)}"
puts "All the instance methods are #{A.instance_methods(false)}"
