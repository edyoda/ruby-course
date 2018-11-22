class A
  def initialize(x)
    @x = x
    #@ x is an instance variable and it will set the value
    # of @x to the A class instance object itself
    #for further use (provide access to other method of A class
    # to use it)
  end
  def p1
    puts @x
  end
  def p2
    puts @x
  end
end
z = A.new(4)
z.p1  # 4
z.p2 # 4
