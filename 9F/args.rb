# formal args and commnad line args


def hello
  op = ARGV.pop
  ARGV.map {| i | i.to_i }.inject(op)
end


puts hello

BEGIN {
  puts "I am the winner"
}

END {
  puts "Oh i ahve lost!"
}

#ARGV - argument vector
# ARGV => ["1", "2", "3", "+"]
# ARGV.map {| i | i.to_i } = > [1, 2, 3]
