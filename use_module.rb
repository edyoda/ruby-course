require_relative "../model.rb"
class B
  include A
end

b = B.new
puts b.p1
