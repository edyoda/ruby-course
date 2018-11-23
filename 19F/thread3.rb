class A
  class << self
    attr_accessor :price
  end
  @price = 0
end

mutex = Mutex.new

thread = (1..10).map do | i |

  Thread.new(i) do | i |
    mutex.synchronize do
      items = A.price
      sleep(rand(0..2))
      items += 10
      sleep(rand(0..2))
      A.price = items
    end
  end
end


thread.each {|t| t.join}

puts A.price


Thread.abort_on_exception = true
