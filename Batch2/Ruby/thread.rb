puts "Start time #{Time.now}"
def add_values(array)
  sleep(2)
  sum = 0
  array.each do | i |
    sum += i
  end
  sum
end


@array1 = [1,2,3,4,5]
@array2 = [6,7,8,9,10]
@array3 = [11,12,13,14,15]


#puts add_values(array1)
#puts add_values(array2)
#puts add_values(array3)

mutex = Mutex.new
threads = (1..3).map do | i |
  mutex.synchronize do 
    Thread.new(i) do  |i|
      array = instance_variable_get("@array#{i}")
      puts add_values(array)
    end
  end
end

threads.each {|t| t.join}
puts "End time #{Time.now}"
