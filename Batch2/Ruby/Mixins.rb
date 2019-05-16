Mixin: a way to implement multiple inheritance in ruby
and it uses module keyword to do so

  * can not be initialized
  * can not be inherited
  * can be either include or extend

module A
  def p1
    "Hello"
  end
end

module B
  def p2
    "Bye"
  end
end

class C
  include A  # include gives only instance methods
  extend B # extend gives class methods
end

c = C.new
c.p1
C.p2
