class A
  def p1
  end
  def method_missing(name, *args)
    name = name.to_s
    if name.match(/^p\d$/)
       "Do you mean p1"
    else
       super(name.to_sym)
    end
  end
end

a = A.new
a.p1
puts a.p2
puts a.rt
