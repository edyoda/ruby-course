#Access Controle in ruby

class A
  public
  def m1
    puts "Public method"
    # m2
    # self.m3
  end
  private
  def m2
    puts "Private"
  end

  protected
  def m3
    puts "Protected"
  end
end

class B  < A
  def m4
    self.m3
  end
end

r = B.new
 r.m4
#puts r.m2
#puts r.m3
