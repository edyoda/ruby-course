class A
  # p1 is a instance method
  def p1
  end
  # p2 is a class method
  def self.p2
  end
  # p3 is a class method
  def A.p3
  end
  class << self
    # p4 and p5 is a class method too
    def p4
    end
    def p5
    end
  end
end


a = A.new
a.p1
A.p2
A.p3
A.p4
