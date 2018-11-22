def p1(t)
  t = 20 + t
  yield(t) if block_given?
  puts "From method p1"
  yield(t + 50) if block_given?
end

p1(10) do | i |
  puts "I am a block n value is #{i}"
end

#OR

p1(10) { | i |
  puts "I am a block n value is #{i}"
}
