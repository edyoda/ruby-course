class A
  public
  def self.p1
    return self.p2, p3
  end
  private
  def self.p2
    "Hi I am p2 from A"
  end
  protected
  def self.p3
    "Hi I am p3 from A"
  end
end

r = A.new
puts r.p1

class Abc
  def p1
    Abc.p2
  end
  protected
  def self.p2
  end
end
Abc.new.p1
