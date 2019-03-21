class A
  def p1
    p = Proc.new { return 121 }
    p.call 
    return 141
  end
  def p2
    l = lambda {return 121}
    l.call
    return 141
  end
end


a = A.new
puts a.p1  # 121
puts a.p2  # 141
