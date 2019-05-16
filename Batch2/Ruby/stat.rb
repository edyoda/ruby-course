
puts GC.stat
class A
  def A.p3
  end
end

100.times {
 A.p3
}

puts GC.stat
