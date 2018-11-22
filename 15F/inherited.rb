class A
  def self.inherited(base)
    puts "#{base} inherited #{self}"
  end
  def p1
  end
end

class B < A
  def p2
  end
end
