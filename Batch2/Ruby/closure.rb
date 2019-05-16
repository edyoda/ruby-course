Closures
  Blocks
  Proc
  Lamda

do ... end

{ ... }

def hello
  a = 5
  b = 10
  c = a + b
  z = yield(c=7, a) if block_given?
  puts  z
end

hello { |x, y| x+ 30 }


Proc
lambda

 * Proc is a class and lambda is an object of it
 * Both executes with the block
 * They are differ in their return type
 * Proc ignores the number of args whereas lambda does not

p = Proc.new {|x, y| puts x + y}
p.call

l = lambda {|x, y| puts x + y}
l.call


class A
  def test1
    proc = Proc.new {return 121}
    proc.call
    return 141
  end
  def test2
    l = lambda {return 131}
    l.call
    return 141
  end
end

a = A.new
a.test1 # 121
a.test2 # 141
