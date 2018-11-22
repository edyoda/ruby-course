require 'byebug'
class Tata
  def p1
     puts "I am p1"
  end
end

# instance_eval gives class methods
Tata.instance_eval do
  def report  # this is a class method
    puts "I am class method added at run time"
    self.new.p1
  end
end

Tata.report

#class_eval gives instance methods
Tata.class_eval do
  def p2
   p1
  end
end

t = Tata.new
t.p2
