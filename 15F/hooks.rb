# Hooks -
#   included
#   extended
#   prepend
#   inherited
module A
  def self.extended(base)
    puts "#{base} extended #{self}"
  end
  def p1
    puts "From module A as p1"
  end
end

class C
  extend A
  def p3
    puts "From class C as p3"
  end
end
