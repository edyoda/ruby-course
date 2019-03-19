class Hello
  def initialize(x, y)
   @x = x
   @y = y
  end
  def p1
    c = @x + @y
  end
end

z = Hello.new(40, 60)
z.p1
