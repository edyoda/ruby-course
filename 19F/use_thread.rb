t1 = Time.now
def sum(array)
  sleep(2)
  sum = 0
  array.each do | i |
    sum += i
  end
  sum
end

@item1 = [1,2,3,4,5]
@item2 = [6,7,8,9,10]
@item3 = [11,12,13,14,15]

thread = (1..3).map do | i |
  Thread.new(i) do | i |
    items = instance_variable_get("@item#{i}")
    puts "item#{i} #{sum(items)}"
  end
end
thread.each {|t| t.join}

t2 = Time.now

puts "Total time taken to complete the prg is #{t2 - t1}"
