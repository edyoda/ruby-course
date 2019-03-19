class Tata
  def nano
    "An instance method named as nano"
  end
  def Tata.hexa
    "A class method named as hexa"
  end
  # self receiver of the current object
  puts "self value is--------#{self}"
  def self.indica
    "A class method named as indica"
  end
  class << self
    def m
       "A class method named as m"
    end
  end
end

Tata.m
Tata.hexa
Tata.indica

t = Tata.new
t.nano
