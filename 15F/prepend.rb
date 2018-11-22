module A
  def p1
    puts "From module A as p1"
  end
end

class C
  prepend A
  def p1
    puts "From class C as p3"
  end
end


c = C.new
c.p1
