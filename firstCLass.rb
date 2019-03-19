class FirstClass
  def p1
    puts "Hello, I am function"
  end 
end

class Tata < FirstClass
  def hexa
     puts "A CAR"
  end
  def p1
    puts "From Tata class"
    super 
  end
  # remove_method :p1 
  undef_method :p1
end

t = Tata.new
print Tata.instance_methods(false)
t.hexa
t.p1
