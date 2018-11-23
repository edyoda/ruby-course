# Thread  - a light weight process.
# Threads which belongs to a process shares the resources of that process.
#
# In Ruby - Thread class can be used to create thread.
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

puts "item1 #{sum(@item1)}"
puts "item2 #{sum(@item2)}"
puts "item3 #{sum(@item3)}"

t2 = Time.now

puts "Total time taken to complete the prg is #{t2 - t1}"
