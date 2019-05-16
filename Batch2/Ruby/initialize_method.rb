class A
  def initialize(a, b)
   @a = a
   @b = b
   @@cl = a + b
  end
  def p1
    puts "class variable is #{@@cl}"
    puts "a is #{@a} and b is #{@b}"
  end
end
