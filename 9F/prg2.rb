class Tata
  def hexa
     "launched in 2018"
  end
  def nano
    "Production stopped in 2018"
  end
end

class B < Tata
  def bye
    "I am from B class"
  end
  # def hexa
  #    "launched in 2018 from B"
  # end
  #undef_method :hexa #remove to remove method from base class
end

b = B.new
puts b.respond_to?(:hexa)
puts b.hexa
puts b.nano
puts b.bye

=begin
the liskov substitution priciple says call the derived class object
with the instance object of base class without touching derived class
=end
