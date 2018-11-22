Instance method VS class method


class A
  def p1 # instance method
    "Hello"
  end
  class << self
    def p2 # class method
      "I am class mehtod"
    end
    def p3 # class method
      "I am class mehtod"
    end
    def p4 # class method
      "I am class mehtod"
    end
  end
  def A.p5  # class method

  end
  def self.p6 # class method

  end

end

a = A.new
a.p1
A.p2
