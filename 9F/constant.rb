class A
  HELLO  = 8
  def hello
    HELLO + 10
  end
end

puts A::HELLO

r =  A.new
puts r.hello
