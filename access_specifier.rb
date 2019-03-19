class A
  def p1
    self.p2
  end
  protected
  def p2
     p "Hello -------->"    
  end
end

a = A.new
a.p1
