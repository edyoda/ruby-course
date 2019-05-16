def commandLine

op = ARGV.pop
=begin
  c = a + b
  return a, b
  puts "Hey I am here!"
=end
  ARGV.map { |i| i.to_i}.inject(op)
end

p commandLine
