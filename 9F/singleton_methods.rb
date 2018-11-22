class A
  def hello
    puts "I am form class A"
  end
end

r = A.new
r.hello

def r.hello
  puts "Hello, I am defined outside"
end

r.hello
