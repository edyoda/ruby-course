def fib(n)
  a, b = 0, 1
  puts a
  (1..9).each do | i |
   puts b
   a,b = b, a + b
  end
end

fib(8)
